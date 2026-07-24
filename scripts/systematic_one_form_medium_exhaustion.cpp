// Exhaustive one-form tail degree on the complete upper low box.
//
// By default N=3e6 and D=28540.  By default P=floor(N/sqrt(6)); passing
// "full" sets P=N and exhausts the complete large-square tail.  Every event
//
//     a*t+1 = p^2*r,  a,t<=N,  a=7 or 18 (mod 25),  D<p<=P
//
// is generated exactly by enumerating the prime p and quotient r, factoring
// p^2*r-1, and retaining every divisor pair (a,t) in the square box.  Since
// D^4>N^2, a fixed (a,t) has at most one such witnessing prime.  The maximum
// counter over t is therefore the exact uniform one-pivot tail bound.
//
// An optional final argument limits the number of (p,r) terms for benchmark
// runs.  A certificate run omits it and must report complete=1.

#include <algorithm>
#include <array>
#include <atomic>
#include <cassert>
#include <cmath>
#include <cstdint>
#include <filesystem>
#include <fstream>
#include <iostream>
#include <numeric>
#include <random>
#include <regex>
#include <string>
#include <tuple>
#include <vector>
#ifdef _OPENMP
#include <omp.h>
#endif

using u64 = std::uint64_t;
using u128 = __uint128_t;

static u64 mul_mod(u64 a, u64 b, u64 m) {
    return (u64)((u128)a * b % m);
}

static u64 pow_mod(u64 a, u64 e, u64 m) {
    u64 result = 1;
    while (e) {
        if (e & 1) result = mul_mod(result, a, m);
        a = mul_mod(a, a, m);
        e >>= 1;
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
    while ((d & 1) == 0) { d >>= 1; ++s; }
    for (u64 a : {2ULL, 325ULL, 9375ULL, 28178ULL, 450775ULL,
                  9780504ULL, 1795265022ULL}) {
        if (a % n == 0) continue;
        u64 x = pow_mod(a % n, d, n);
        if (x == 1 || x == n - 1) continue;
        bool composite = true;
        for (u64 r = 1; r < s; ++r) {
            x = mul_mod(x, x, n);
            if (x == n - 1) { composite = false; break; }
        }
        if (composite) return false;
    }
    return true;
}

static u64 pollard(u64 n, std::mt19937_64 &rng) {
    if (n % 2 == 0) return 2;
    if (n % 3 == 0) return 3;
    for (;;) {
        u64 c = 1 + rng() % (n - 1);
        u64 x = 2 + rng() % (n - 3), y = x, d = 1;
        auto f = [&](u64 z) { return (mul_mod(z, z, n) + c) % n; };
        while (d == 1) {
            x = f(x);
            y = f(f(y));
            u64 difference = x > y ? x - y : y - x;
            d = std::gcd(difference, n);
        }
        if (d != n) return d;
    }
}

static void factor_rec(u64 n, std::vector<u64> &factors, std::mt19937_64 &rng) {
    if (n == 1) return;
    if (is_prime(n)) { factors.push_back(n); return; }
    u64 d = pollard(n, rng);
    factor_rec(d, factors, rng);
    factor_rec(n / d, factors, rng);
}

static std::vector<int> primes_through(int n) {
    std::vector<bool> sieve(n + 1, true);
    sieve[0] = sieve[1] = false;
    for (int p = 2; (u64)p * p <= (u64)n; ++p)
        if (sieve[p]) for (int q = p * p; q <= n; q += p) sieve[q] = false;
    std::vector<int> result;
    for (int p = 2; p <= n; ++p) if (sieve[p]) result.push_back(p);
    return result;
}

int main(int argc, char **argv) {
    u64 N = 3'000'000;
    u64 D = 28'540;
    u64 term_limit = 0;
    bool full = false;
    if (argc >= 2 && std::string(argv[1]) == "full") {
        full = true;
        if (argc >= 3) N = std::stoull(argv[2]);
        if (argc >= 4) D = std::stoull(argv[3]);
        if (argc >= 5) term_limit = std::stoull(argv[4]);
        if (argc > 6) return 2;
    } else if (argc >= 2) {
        term_limit = std::stoull(argv[1]);
        if (argc > 2) return 2;
    }
    u64 P = full ? N : (u64)std::floor((long double)N / std::sqrt(6.0L));
    assert((u128)D * D * D * D > (u128)N * N + 1);

    std::vector<bool> diagonal_marker;
    u64 marker_count = 0;
    if (argc >= 6) {
        diagonal_marker.assign(N + 1, false);
        const std::regex file_pattern(R"(^MarkerSequenceChunk[0-9]{4}\.lean$)");
        const std::regex leaf_pattern(R"(\.leaf ([0-9]+)\))");
        std::vector<std::filesystem::path> marker_files;
        for (const auto &entry : std::filesystem::directory_iterator(argv[5])) {
            if (entry.is_regular_file() &&
                std::regex_match(entry.path().filename().string(), file_pattern))
                marker_files.push_back(entry.path());
        }
        std::sort(marker_files.begin(), marker_files.end());
        for (const auto &path : marker_files) {
            std::ifstream input(path);
            std::string text((std::istreambuf_iterator<char>(input)),
                             std::istreambuf_iterator<char>());
            for (std::sregex_iterator it(text.begin(), text.end(), leaf_pattern), end;
                 it != end; ++it) {
                u64 value = std::stoull((*it)[1].str());
                if (value <= N && !diagonal_marker[value]) {
                    diagonal_marker[value] = true;
                    ++marker_count;
                }
            }
        }
        if (marker_files.empty() || marker_count == 0) return 3;
    }

    std::vector<int> primes;
    for (int p : primes_through((int)P)) if ((u64)p > D) primes.push_back(p);
    std::vector<u64> prefix(primes.size() + 1, 0);
    for (std::size_t i = 0; i < primes.size(); ++i) {
        u64 p = primes[i];
        prefix[i + 1] = prefix[i] + (N * N + 1) / (p * p);
    }
    u64 total_terms = prefix.back();
    u64 active_terms = term_limit ? std::min(term_limit, total_terms) : total_terms;
    std::vector<std::atomic<std::uint32_t>> degree(N + 1);
    for (auto &value : degree) value.store(0, std::memory_order_relaxed);
    std::atomic<u64> events{0}, processed{0};

    #pragma omp parallel
    {
        int thread = 0;
        #ifdef _OPENMP
        thread = omp_get_thread_num();
        #endif
        std::mt19937_64 rng(848266ULL + (u64)thread * 1'000'003ULL);
        std::vector<u64> factors, divisors;
        #pragma omp for schedule(dynamic, 1)
        for (std::int64_t index = 0; index < (std::int64_t)primes.size(); ++index) {
            u64 begin = prefix[index], end = prefix[index + 1];
            if (begin >= active_terms) continue;
            end = std::min(end, active_terms);
            u64 p = primes[index], p2 = p * p;
            for (u64 offset = begin; offset < end; ++offset) {
                u64 r = offset - begin + 1;
                u64 value = p2 * r - 1;
                factors.clear();
                factor_rec(value, factors, rng);
                std::sort(factors.begin(), factors.end());
                u128 reconstructed = 1;
                for (u64 q : factors) {
                    assert(is_prime(q));
                    reconstructed *= q;
                }
                assert(reconstructed == value);
                std::vector<std::pair<u64, int>> powers;
                for (u64 q : factors) {
                    if (powers.empty() || powers.back().first != q)
                        powers.push_back({q, 1});
                    else
                        ++powers.back().second;
                }
                divisors.assign(1, 1);
                for (auto [q, exponent] : powers) {
                    std::size_t old_size = divisors.size();
                    u64 power = 1;
                    for (int e = 1; e <= exponent; ++e) {
                        power *= q;
                        for (std::size_t j = 0; j < old_size; ++j) {
                            u128 candidate = (u128)divisors[j] * power;
                            if (candidate <= N) divisors.push_back((u64)candidate);
                        }
                    }
                }
                for (u64 a : divisors) {
                    if (a % 25 != 7 && a % 25 != 18) continue;
                    u64 t = value / a;
                    if (t == 0 || t > N || a * t != value) continue;
                    degree[t].fetch_add(1, std::memory_order_relaxed);
                    events.fetch_add(1, std::memory_order_relaxed);
                }
                processed.fetch_add(1, std::memory_order_relaxed);
            }
        }
    }

    std::tuple<unsigned, u64> best{0, 0};
    for (u64 t = 1; t <= N; ++t) {
        if (!diagonal_marker.empty() && !diagonal_marker[t]) continue;
        best = std::max(best, std::make_tuple((unsigned)degree[t].load(), t));
    }
    auto [maximum, pivot] = best;
    std::cout << "N=" << N << " D=" << D << " P=" << P
              << " primes=" << primes.size() << " terms=" << processed.load()
              << '/' << total_terms << " events=" << events.load()
              << " marker_count=" << marker_count
              << " complete=" << (processed.load() == total_terms)
              << " maximum=" << maximum << '@' << pivot << '\n';
    if (processed.load() == total_terms) {
        if (diagonal_marker.empty() && N == 3'000'000 && D == 28'540)
            assert(maximum == 40 && pivot == 10'920);
        if (diagonal_marker.empty() && full && N == 5'000'000 && D == 28'540)
            assert(maximum == 49 && pivot == 9'240);
        std::cout << "PASS exhaustive one-form "
                  << (full ? "complete-tail" : "medium-tail")
                  << " degree\n";
    } else {
        std::cout << "BENCHMARK prefix only\n";
    }
}
