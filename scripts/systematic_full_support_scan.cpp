// Exact full-support quotient-root maxima for the small-N degree certificate.
//
// For every set S of exactly k distinct non-5 odd primes with product at
// most N, this enumerates the m <= M which lie in either nonzero mod-5
// square coset, satisfy the relevant quotient congruence m=1 mod 2^e, and
// are quadratic residues modulo every p in S.  The search is exhaustive;
// intersection cardinality is monotone, so a node is pruned only when none
// of its eight label/coset masks can improve the incumbent maximum.

#include <algorithm>
#include <array>
#include <cassert>
#include <cstdint>
#include <iostream>
#include <limits>
#include <string>
#include <vector>

using u64 = std::uint64_t;
using u128 = __uint128_t;

static u64 mod_pow(u64 a, u64 e, u64 m) {
    u64 r = 1;
    while (e) {
        if (e & 1) r = (u64)((u128)r * a % m);
        a = (u64)((u128)a * a % m);
        e >>= 1;
    }
    return r;
}

struct Search {
    int N, M, k, words;
    std::vector<int> primes;
    std::vector<u64> masks; // prime-major, then word
    std::vector<u64> levels; // depth-major, then 8 masks, then word
    std::array<int, 8> best{};
    std::array<std::vector<int>, 8> witness;
    std::vector<int> path;
    u64 leaves = 0, nodes = 0, pruned = 0;

    u64 *level(int depth, int state) {
        return levels.data() + ((std::size_t)depth * 8 + state) * words;
    }
    const u64 *prime_mask(int index) const {
        return masks.data() + (std::size_t)index * words;
    }
    int intersection_count(const u64 *a, const u64 *b) const {
        int result = 0;
        for (int w = 0; w < words; ++w)
            result += __builtin_popcountll(a[w] & b[w]);
        return result;
    }
    bool make_level(int depth, int next_depth, int prime_index) {
        const u64 *pm = prime_mask(prime_index);
        bool live = false;
        for (int s = 0; s < 8; ++s) {
            u64 *dst = level(next_depth, s);
            u64 *src = level(depth, s);
            int count = 0;
            for (int w = 0; w < words; ++w) {
                dst[w] = src[w] & pm[w];
                count += __builtin_popcountll(dst[w]);
            }
            live = live || count > best[s];
        }
        return live;
    }
    bool least_completion_fits(int start, int need, u64 product) const {
        if (start + need > (int)primes.size()) return false;
        u128 value = product;
        for (int j = 0; j < need; ++j) {
            value *= (u64)primes[start + j];
            if (value > (u64)N) return false;
        }
        return true;
    }
    void record_last(int depth, int prime_index) {
        ++leaves;
        const u64 *pm = prime_mask(prime_index);
        for (int s = 0; s < 8; ++s) {
            int count = intersection_count(level(depth, s), pm);
            if (count > best[s]) {
                best[s] = count;
                witness[s] = path;
                witness[s].push_back(primes[prime_index]);
            }
        }
    }
    void dfs(int depth, int start, int need, u64 product) {
        ++nodes;
        assert(need >= 1);
        for (int i = start; i < (int)primes.size(); ++i) {
            u64 next_product = product * (u64)primes[i];
            if (next_product > (u64)N) break;
            if (need > 1 && !least_completion_fits(i + 1, need - 1, next_product))
                break;
            if (need == 1) {
                record_last(depth, i);
                continue;
            }
            if (!make_level(depth, depth + 1, i)) {
                ++pruned;
                continue;
            }
            path.push_back(primes[i]);
            dfs(depth + 1, i + 1, need - 1, next_product);
            path.pop_back();
        }
    }
};

int main(int argc, char **argv) {
    if (argc != 4) {
        std::cerr << "usage: systematic_full_support_scan N M k\n";
        return 2;
    }
    Search search;
    search.N = std::stoi(argv[1]);
    search.M = std::stoi(argv[2]);
    search.k = std::stoi(argv[3]);
    assert(search.N >= 3 && search.M >= 1 && search.k >= 2);
    search.words = (search.M + 63) / 64;

    // No prime beyond N divided by the least k-1 allowed primes can occur.
    const std::array<int, 8> least{3, 7, 11, 13, 17, 19, 23, 29};
    u64 divisor = 1;
    for (int i = 0; i < search.k - 1; ++i) divisor *= least[i];
    int prime_limit = search.N / (int)divisor;
    int sieve_limit = std::max(search.M, prime_limit);
    std::vector<int> spf(sieve_limit + 1);
    std::vector<int> all_primes;
    for (int i = 2; i <= sieve_limit; ++i) {
        if (!spf[i]) { spf[i] = i; all_primes.push_back(i); }
        for (int p : all_primes) {
            if (p > spf[i] || (u64)i * p > (u64)sieve_limit) break;
            spf[i * p] = p;
        }
    }
    for (int p : all_primes)
        if (p >= 3 && p != 5 && p <= prime_limit) search.primes.push_back(p);

    std::vector<int> small_primes;
    std::vector<std::vector<std::int8_t>> symbol(search.M + 1);
    for (int q : all_primes) {
        if (q > search.M) break;
        small_primes.push_back(q);
        symbol[q].resize(q);
        for (int r = 1; r < q; ++r) {
            u64 value = mod_pow((u64)r, (q - 1) / 2, q);
            symbol[q][r] = (value == 1) ? 1 : -1;
        }
    }

    search.masks.assign((std::size_t)search.primes.size() * search.words, 0);
    std::vector<std::int8_t> prime_symbol(search.M + 1), chi(search.M + 1);
    for (int index = 0; index < (int)search.primes.size(); ++index) {
        int p = search.primes[index];
        for (int q : small_primes) {
            int value;
            if (q == 2) {
                int r8 = p & 7;
                value = (r8 == 1 || r8 == 7) ? 1 : -1;
            } else if (q == p) {
                value = 0;
            } else {
                value = symbol[q][p % q];
                if ((p & 3) == 3 && (q & 3) == 3) value = -value;
            }
            prime_symbol[q] = (std::int8_t)value;
        }
        chi[1] = 1;
        u64 *mask = search.masks.data() + (std::size_t)index * search.words;
        for (int m = 1; m <= search.M; ++m) {
            if (m > 1) chi[m] = (std::int8_t)(prime_symbol[spf[m]] * chi[m / spf[m]]);
            if (chi[m] == 1) mask[(m - 1) / 64] |= u64(1) << ((m - 1) % 64);
        }
    }

    search.levels.assign((std::size_t)(search.k + 1) * 8 * search.words, 0);
    constexpr std::array<int, 4> modulus{1, 2, 4, 8};
    for (int label = 0; label < 4; ++label) {
        for (int coset = 0; coset < 2; ++coset) {
            int state = 2 * label + coset;
            u64 *mask = search.level(0, state);
            for (int m = 1; m <= search.M; ++m) {
                int r5 = m % 5;
                int c = (r5 == 1 || r5 == 4) ? 0 :
                        (r5 == 2 || r5 == 3) ? 1 : -1;
                if (c == coset && m % modulus[label] == 1 % modulus[label])
                    mask[(m - 1) / 64] |= u64(1) << ((m - 1) % 64);
            }
        }
    }

    if (!search.least_completion_fits(0, search.k, 1)) {
        std::cout << "N=" << search.N << " M=" << search.M
                  << " k=" << search.k << " infeasible\n";
        return 0;
    }
    search.dfs(0, 0, search.k, 1);
    constexpr std::array<const char *, 4> names{
        "odd", "v2=1", "v2=2", "v2>=3"
    };
    std::cout << "N=" << search.N << " M=" << search.M << " k=" << search.k
              << " primes=" << search.primes.size() << " nodes=" << search.nodes
              << " leaves=" << search.leaves << " pruned=" << search.pruned << '\n';
    for (int label = 0; label < 4; ++label) {
        std::cout << "label=" << names[label];
        for (int coset = 0; coset < 2; ++coset) {
            int state = 2 * label + coset;
            std::cout << " coset" << coset << '=' << search.best[state] << "@[";
            for (int i = 0; i < (int)search.witness[state].size(); ++i) {
                if (i) std::cout << ',';
                std::cout << search.witness[state][i];
            }
            std::cout << ']';
        }
        std::cout << " maximum=" << std::max(search.best[2 * label], search.best[2 * label + 1]) << '\n';
    }
}
