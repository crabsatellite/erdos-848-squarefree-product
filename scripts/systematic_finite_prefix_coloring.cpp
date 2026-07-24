// Exact prefix-colouring certificate for the remaining finite Erdos-848 box.
//
// A vertex x can belong to an admissible set only if x^2+1 is nonsquarefree.
// Enumerate that set exactly by lifting the two roots of -1 modulo p^2 for
// every prime p <= LIMIT.  We colour the resulting compatibility graph
// online by two matchings.  A new colour is created exactly when
// x == 7 (mod 25).  The vertices x == 18 (mod 25) are matched injectively
// to those anchors through squarefree products.  Every remaining diagonal
// candidate is then matched injectively to a colour through which it has
// squarefree products with both the anchor and the resident 18-class
// vertex.  Each colour therefore has at most three pairwise incompatible
// vertices.  Both matchings are repaired immediately at every insertion, so
// every prefix N uses exactly |C_N| independent colour classes.

#include <algorithm>
#include <array>
#include <cassert>
#include <cstdint>
#include <functional>
#include <fstream>
#include <iostream>
#include <map>
#include <numeric>
#include <random>
#include <string>
#include <tuple>
#include <unordered_map>
#include <vector>

#ifdef NDEBUG
#error "This exact certificate must be compiled with assertions enabled."
#endif

using u64 = std::uint64_t;
using u128 = __uint128_t;

static u64 mul_mod(u64 a, u64 b, u64 modulus) {
    return (u64)((u128)a * b % modulus);
}

static u64 pow_mod(u64 a, u64 exponent, u64 modulus) {
    u64 result = 1;
    while (exponent) {
        if (exponent & 1) result = mul_mod(result, a, modulus);
        a = mul_mod(a, a, modulus);
        exponent >>= 1;
    }
    return result;
}

static bool is_prime(u64 n) {
    if (n < 2) return false;
    for (u64 p : {2ULL, 3ULL, 5ULL, 7ULL, 11ULL, 13ULL, 17ULL, 19ULL,
                  23ULL, 29ULL, 31ULL, 37ULL}) {
        if (n % p == 0) return n == p;
    }
    u64 d = n - 1, s = 0;
    while ((d & 1) == 0) {
        d >>= 1;
        ++s;
    }
    for (u64 a : {2ULL, 325ULL, 9375ULL, 28178ULL, 450775ULL,
                  9780504ULL, 1795265022ULL}) {
        if (a % n == 0) continue;
        u64 value = pow_mod(a % n, d, n);
        if (value == 1 || value == n - 1) continue;
        bool witness = true;
        for (u64 r = 1; r < s; ++r) {
            value = mul_mod(value, value, n);
            if (value == n - 1) {
                witness = false;
                break;
            }
        }
        if (witness) return false;
    }
    return true;
}

static u64 pollard(u64 n, std::mt19937_64 &rng) {
    if (n % 2 == 0) return 2;
    if (n % 3 == 0) return 3;
    for (;;) {
        u64 c = 1 + rng() % (n - 1);
        u64 x = 2 + rng() % (n - 3), y = x, divisor = 1;
        auto step = [&](u64 z) { return (mul_mod(z, z, n) + c) % n; };
        while (divisor == 1) {
            x = step(x);
            y = step(step(y));
            divisor = std::gcd(x > y ? x - y : y - x, n);
        }
        if (divisor != n) return divisor;
    }
}

static void factor_rec(
    u64 n, std::vector<u64> &factors, std::mt19937_64 &rng
) {
    if (n == 1) return;
    if (is_prime(n)) {
        factors.push_back(n);
        return;
    }
    u64 divisor = pollard(n, rng);
    factor_rec(divisor, factors, rng);
    factor_rec(n / divisor, factors, rng);
}

static std::vector<int> primes_through(int limit) {
    std::vector<bool> sieve(limit + 1, true);
    if (limit >= 0) sieve[0] = false;
    if (limit >= 1) sieve[1] = false;
    for (int p = 2; (u64)p * p <= (u64)limit; ++p)
        if (sieve[p])
            for (int q = p * p; q <= limit; q += p) sieve[q] = false;
    std::vector<int> primes;
    for (int p = 2; p <= limit; ++p)
        if (sieve[p]) primes.push_back(p);
    return primes;
}

class SquarefreeOracle {
  public:
    explicit SquarefreeOracle(const std::vector<int> &primes)
        : small_primes_(primes), rng_(848272ULL) {}

    bool operator()(u64 n) {
        auto found = cache_.find(n);
        if (found != cache_.end()) return found->second;
        ++queries_;
        for (int p : small_primes_) {
            if (p > 1000) break;
            u64 square = (u64)p * p;
            if (square > n) break;
            if (n % square == 0) {
                cache_.emplace(n, false);
                return false;
            }
        }
        std::vector<u64> factors;
        factor_rec(n, factors, rng_);
        std::sort(factors.begin(), factors.end());
        u128 product = 1;
        bool squarefree = true;
        for (std::size_t i = 0; i < factors.size(); ++i) {
            assert(is_prime(factors[i]));
            product *= factors[i];
            if (i && factors[i] == factors[i - 1]) squarefree = false;
        }
        assert(product == n);
        cache_.emplace(n, squarefree);
        if (squarefree) squarefree_factors_.emplace(n, factors);
        return squarefree;
    }

    u64 queries() const { return queries_; }
    std::size_t cache_size() const { return cache_.size(); }
    const std::unordered_map<u64, std::vector<u64>> &squarefree_factors()
        const {
        return squarefree_factors_;
    }

  private:
    const std::vector<int> &small_primes_;
    std::mt19937_64 rng_;
    std::unordered_map<u64, bool> cache_;
    std::unordered_map<u64, std::vector<u64>> squarefree_factors_;
    u64 queries_ = 0;
};

static u64 splitmix(u64 x) {
    x += 0x9e3779b97f4a7c15ULL;
    x = (x ^ (x >> 30)) * 0xbf58476d1ce4e5b9ULL;
    x = (x ^ (x >> 27)) * 0x94d049bb133111ebULL;
    return x ^ (x >> 31);
}

int main(int argc, char **argv) {
    int limit = 1'500'000;
    if (argc >= 2) limit = std::stoi(argv[1]);
    std::string trace_path;
    if (argc >= 3) trace_path = argv[2];
    std::string factor_path;
    if (argc >= 4) factor_path = argv[3];
    if (argc > 4 || limit < 7) return 2;
    std::ofstream trace;
    if (!trace_path.empty()) {
        trace.open(trace_path, std::ios::binary | std::ios::trunc);
        if (!trace) return 3;
        trace << "ERDOS848_PREFIX_TRACE_V2 " << limit << '\n';
    }

    std::vector<int> primes = primes_through(limit);
    std::vector<int> diagonal_witness(limit + 1, 0);
    u64 lifted_roots = 0;
    for (int p : primes) {
        if (p == 2 || p % 4 != 1) continue;
        u64 nonresidue = 2;
        while (pow_mod(nonresidue, (p - 1) / 2, p) != (u64)p - 1)
            ++nonresidue;
        u64 root = pow_mod(nonresidue, (p - 1) / 4, p);
        assert(root * root % p == (u64)p - 1);
        u64 quotient = (root * root + 1) / p % p;
        u64 inverse = pow_mod(2 * root % p, p - 2, p);
        u64 correction = (p - mul_mod(quotient, inverse, p)) % p;
        u64 square = (u64)p * p;
        u64 lifted = root + correction * p;
        assert(((u128)lifted * lifted + 1) % square == 0);
        std::array<u64, 2> roots{lifted, square - lifted};
        for (u64 residue : roots) {
            ++lifted_roots;
            for (u64 x = residue; x <= (u64)limit; x += square)
                if (diagonal_witness[x] == 0) diagonal_witness[x] = p;
        }
    }

    SquarefreeOracle squarefree(primes);
    std::vector<int> anchors, opposite, exceptional;
    std::vector<int> opposite_owner, exceptional_owner;
    std::vector<int> opposite_colour, exceptional_colour;
    u64 candidates = 0, pure_edge_tests = 0, exceptional_edge_tests = 0;
    u64 pure_repairs = 0, exceptional_repairs = 0, prefixes = 0;
    u64 pure_direct = 0, pure_swaps = 0, pure_fallbacks = 0;
    u64 exceptional_direct = 0, exceptional_fallbacks = 0;
    std::vector<int> exceptional_fallback_vertices;
    int maximum_pure_depth = 0, maximum_exceptional_depth = 0;
    std::vector<int> trace_opposite_changes, trace_exceptional_changes;

    auto pure_edge = [&](int left, int colour) {
        ++pure_edge_tests;
        return squarefree((u64)opposite[left] * anchors[colour] + 1);
    };
    auto exceptional_edge = [&](int vertex, int colour) {
        ++exceptional_edge_tests;
        int x = exceptional[vertex];
        if (!squarefree((u64)x * anchors[colour] + 1)) return false;
        int left = opposite_owner[colour];
        return left == -1 ||
               squarefree((u64)x * opposite[left] + 1);
    };

    auto augment_opposite = [&](int root, std::vector<int> &changed) {
        std::vector<unsigned char> seen(anchors.size(), 0);
        std::function<bool(int, int)> visit = [&](int left, int depth) {
            maximum_pure_depth = std::max(maximum_pure_depth, depth);
            std::size_t count = anchors.size();
            std::size_t start =
                splitmix((u64)opposite[left] * 1'000'003ULL) % count;
            for (std::size_t trial = 0; trial < count; ++trial) {
                int colour = (int)((start + trial) % count);
                if (seen[colour] || !pure_edge(left, colour)) continue;
                seen[colour] = 1;
                int old = opposite_owner[colour];
                if (old != -1 && !visit(old, depth + 1)) continue;
                opposite_owner[colour] = left;
                opposite_colour[left] = colour;
                changed.push_back(colour);
                trace_opposite_changes.push_back(colour);
                return true;
            }
            return false;
        };
        return visit(root, 1);
    };

    auto augment_exceptional = [&](int root) {
        std::vector<unsigned char> seen(anchors.size(), 0);
        std::function<bool(int, int)> visit = [&](int vertex, int depth) {
            maximum_exceptional_depth =
                std::max(maximum_exceptional_depth, depth);
            std::size_t count = anchors.size();
            std::size_t start =
                splitmix((u64)exceptional[vertex] * 1'000'033ULL) % count;
            for (std::size_t trial = 0; trial < count; ++trial) {
                int colour = (int)((start + trial) % count);
                if (seen[colour] || !exceptional_edge(vertex, colour))
                    continue;
                seen[colour] = 1;
                int old = exceptional_owner[colour];
                if (old != -1 && !visit(old, depth + 1)) continue;
                exceptional_owner[colour] = vertex;
                exceptional_colour[vertex] = colour;
                trace_exceptional_changes.push_back(colour);
                return true;
            }
            return false;
        };
        return visit(root, 1);
    };

    auto place_exceptional = [&](int vertex) {
        std::size_t count = anchors.size();
        std::size_t start =
            splitmix((u64)exceptional[vertex] * 1'000'033ULL) % count;
        for (std::size_t trial = 0; trial < count; ++trial) {
            int colour = (int)((start + trial) % count);
            if (exceptional_owner[colour] != -1 ||
                !exceptional_edge(vertex, colour))
                continue;
            exceptional_owner[colour] = vertex;
            exceptional_colour[vertex] = colour;
            trace_exceptional_changes.push_back(colour);
            ++exceptional_direct;
            return true;
        }
        ++exceptional_fallbacks;
        exceptional_fallback_vertices.push_back(exceptional[vertex]);
        return augment_exceptional(vertex);
    };

    for (int x = 1; x <= limit; ++x) {
        if (diagonal_witness[x] == 0) continue;
        ++candidates;
        ++prefixes;
        trace_opposite_changes.clear();
        trace_exceptional_changes.clear();
        if (x % 25 == 7) {
            anchors.push_back(x);
            opposite_owner.push_back(-1);
            exceptional_owner.push_back(-1);
        } else if (x % 25 == 18) {
            int left = (int)opposite.size();
            opposite.push_back(x);
            opposite_colour.push_back(-1);
            std::vector<int> changed;
            int free_colour = -1;
            for (std::size_t colour = 0; colour < anchors.size(); ++colour)
                if (opposite_owner[colour] == -1) {
                    assert(free_colour == -1);
                    free_colour = (int)colour;
                }
            assert(free_colour != -1);
            bool placed = false;
            if (pure_edge(left, free_colour)) {
                opposite_owner[free_colour] = left;
                opposite_colour[left] = free_colour;
                changed.push_back(free_colour);
                trace_opposite_changes.push_back(free_colour);
                ++pure_direct;
                placed = true;
            } else {
                std::size_t old_count = opposite.size() - 1;
                std::size_t start =
                    old_count ? splitmix((u64)x * 1'000'003ULL) % old_count : 0;
                for (std::size_t trial = 0; trial < old_count; ++trial) {
                    int old = (int)((start + trial) % old_count);
                    int old_colour = opposite_colour[old];
                    if (!pure_edge(old, free_colour) ||
                        !pure_edge(left, old_colour))
                        continue;
                    opposite_owner[free_colour] = old;
                    opposite_colour[old] = free_colour;
                    opposite_owner[old_colour] = left;
                    opposite_colour[left] = old_colour;
                    changed.push_back(free_colour);
                    changed.push_back(old_colour);
                    trace_opposite_changes.push_back(free_colour);
                    trace_opposite_changes.push_back(old_colour);
                    ++pure_swaps;
                    placed = true;
                    break;
                }
            }
            if (!placed) {
                ++pure_fallbacks;
                placed = augment_opposite(left, changed);
            }
            if (!placed) {
                std::cout << "FAIL opposite matching vertex=" << x
                          << " anchors=" << anchors.size()
                          << " opposite=" << opposite.size() << '\n';
                return 1;
            }
            ++pure_repairs;
            std::sort(changed.begin(), changed.end());
            changed.erase(std::unique(changed.begin(), changed.end()),
                          changed.end());
            std::vector<int> displaced;
            for (int colour : changed) {
                int vertex = exceptional_owner[colour];
                if (vertex == -1 || exceptional_edge(vertex, colour))
                    continue;
                exceptional_owner[colour] = -1;
                exceptional_colour[vertex] = -1;
                trace_exceptional_changes.push_back(colour);
                displaced.push_back(vertex);
            }
            for (int vertex : displaced) {
                if (!place_exceptional(vertex)) {
                    std::cout << "FAIL exceptional repair at opposite="
                              << x << " exceptional="
                              << exceptional[vertex] << '\n';
                    return 1;
                }
                ++exceptional_repairs;
            }
        } else {
            int vertex = (int)exceptional.size();
            exceptional.push_back(x);
            exceptional_colour.push_back(-1);
            if (!place_exceptional(vertex)) {
                std::cout << "FAIL exceptional matching vertex=" << x
                          << " anchors=" << anchors.size()
                          << " exceptional=" << exceptional.size() << '\n';
                return 1;
            }
            ++exceptional_repairs;
        }
        assert(opposite.size() <= anchors.size());
        assert(exceptional.size() <= anchors.size());
        if (trace) {
            auto normalize = [](std::vector<int> &changes) {
                std::sort(changes.begin(), changes.end());
                changes.erase(std::unique(changes.begin(), changes.end()),
                              changes.end());
            };
            normalize(trace_opposite_changes);
            normalize(trace_exceptional_changes);
            trace << x << ' ' << diagonal_witness[x] << ' '
                  << anchors.size() << ' '
                  << trace_opposite_changes.size();
            for (int colour : trace_opposite_changes) {
                int owner = opposite_owner[colour];
                trace << ' ' << anchors[colour] << ' '
                      << (owner == -1 ? 0 : opposite[owner]);
            }
            trace << ' ' << trace_exceptional_changes.size();
            for (int colour : trace_exceptional_changes) {
                int owner = exceptional_owner[colour];
                trace << ' ' << anchors[colour] << ' '
                      << (owner == -1 ? 0 : exceptional[owner]);
            }
            trace << '\n';
        }
    }

    u64 verification_pairs = 0;
    SquarefreeOracle final_squarefree(primes);
    std::vector<int> covered(limit + 1, 0);
    for (std::size_t colour = 0; colour < anchors.size(); ++colour) {
        int anchor = anchors[colour];
        assert(anchor % 25 == 7);
        assert(covered[anchor] == 0);
        covered[anchor] = 1;
        int left = opposite_owner[colour];
        int vertex = exceptional_owner[colour];
        if (left != -1) {
            assert(opposite_colour[left] == (int)colour);
            assert(final_squarefree((u64)anchor * opposite[left] + 1));
            assert(covered[opposite[left]] == 0);
            covered[opposite[left]] = 1;
            ++verification_pairs;
        }
        if (vertex != -1) {
            assert(exceptional_colour[vertex] == (int)colour);
            assert(final_squarefree((u64)anchor * exceptional[vertex] + 1));
            assert(covered[exceptional[vertex]] == 0);
            covered[exceptional[vertex]] = 1;
            ++verification_pairs;
            if (left != -1) {
                assert(final_squarefree(
                    (u64)opposite[left] * exceptional[vertex] + 1
                ));
                ++verification_pairs;
            }
        }
    }
    for (int x = 1; x <= limit; ++x) {
        assert((diagonal_witness[x] != 0) == (covered[x] != 0));
        if (diagonal_witness[x] != 0) {
            u64 square = (u64)diagonal_witness[x] * diagonal_witness[x];
            assert(((u128)x * x + 1) % square == 0);
        }
    }
    assert(anchors.size() == (std::size_t)((limit - 7) / 25 + 1));
    assert(opposite.size() <= anchors.size());
    assert(exceptional.size() <= anchors.size());
    assert(final_squarefree.queries() == verification_pairs);
    std::map<u64, std::vector<u64>> factor_table;
    for (const auto &[n, factors] : squarefree.squarefree_factors())
        factor_table.emplace(n, factors);
    for (const auto &[n, factors] : final_squarefree.squarefree_factors())
        factor_table.emplace(n, factors);
    if (!factor_path.empty()) {
        std::ofstream factors(factor_path, std::ios::binary | std::ios::trunc);
        if (!factors) return 4;
        factors << "ERDOS848_SQUAREFREE_FACTORS_V1 " << limit << ' '
                << factor_table.size() << '\n';
        for (const auto &[n, prime_factors] : factor_table) {
            factors << n << ' ' << prime_factors.size();
            for (u64 p : prime_factors) factors << ' ' << p;
            factors << '\n';
        }
        factors << "END " << factor_table.size() << '\n';
        factors.flush();
        if (!factors) return 4;
    }
    if (trace) {
        trace << "END " << candidates << ' ' << anchors.size() << ' '
              << verification_pairs << '\n';
        trace.flush();
        if (!trace) return 4;
    }

    std::cout << "limit=" << limit << " primes=" << primes.size()
              << " lifted_roots=" << lifted_roots
              << " candidates=" << candidates
              << " colours=" << anchors.size()
              << " opposite=" << opposite.size()
              << " exceptional=" << exceptional.size()
              << " prefixes=" << prefixes
              << " pure_edge_tests=" << pure_edge_tests
              << " exceptional_edge_tests=" << exceptional_edge_tests
              << " pure_repairs=" << pure_repairs
              << " exceptional_repairs=" << exceptional_repairs
              << " pure_direct=" << pure_direct
              << " pure_swaps=" << pure_swaps
              << " pure_fallbacks=" << pure_fallbacks
              << " exceptional_direct=" << exceptional_direct
              << " exceptional_fallbacks=" << exceptional_fallbacks
              << " maximum_pure_depth=" << maximum_pure_depth
              << " maximum_exceptional_depth="
              << maximum_exceptional_depth
              << " verification_pairs=" << verification_pairs
              << " oracle_queries=" << squarefree.queries()
              << " cache=" << squarefree.cache_size()
              << " verification_oracle_queries="
              << final_squarefree.queries()
              << " verification_cache="
              << final_squarefree.cache_size()
              << " squarefree_factorizations=" << factor_table.size()
              << '\n';
    std::cout << "exceptional_fallback_vertices=";
    for (std::size_t i = 0; i < exceptional_fallback_vertices.size(); ++i) {
        if (i) std::cout << ',';
        std::cout << exceptional_fallback_vertices[i];
    }
    std::cout << '\n';
    std::cout << "PASS exact two-matching prefix colouring through "
              << limit << '\n';
}
