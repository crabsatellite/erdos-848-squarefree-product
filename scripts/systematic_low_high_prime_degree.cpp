// Exhaustive high-prime one-form incidence on the complete upper low box.
//
// For every 1 <= t <= N*, count triples (a,p) with
//
//   a <= N*,  a = 7 or 18 (mod 25),  cutoff < p <= D,
//   p prime, and p^2 | a*t+1.
//
// Incidence (rather than union) is a safe upper bound for the one-form tail
// degree.  We enumerate the congruence symmetrically from a: for each p and
// unit a modulo p^2, t is the progression -a^{-1} (mod p^2).  Batch modular
// inversion removes one extended-gcd call per a.  Thread-local counters make
// the enumeration deterministic after the final exact reduction.

#include <algorithm>
#include <array>
#include <cassert>
#include <cstdint>
#include <filesystem>
#include <fstream>
#include <iostream>
#include <limits>
#include <numeric>
#include <regex>
#include <string>
#include <tuple>
#include <vector>

#ifdef _OPENMP
#include <omp.h>
#endif

using u64 = std::uint64_t;
using u32 = std::uint32_t;
using u16 = std::uint16_t;
using i128 = __int128_t;

static i128 egcd(i128 a, i128 b, i128 &x, i128 &y) {
    if (!b) { x = 1; y = 0; return a; }
    i128 x1, y1;
    i128 g = egcd(b, a % b, x1, y1);
    x = y1;
    y = x1 - (a / b) * y1;
    return g;
}

static u64 inverse(u64 a, u64 modulus) {
    i128 x, y;
    assert(egcd(a, modulus, x, y) == 1);
    x %= (i128)modulus;
    if (x < 0) x += modulus;
    return (u64)x;
}

static std::vector<int> primes_through(int n) {
    std::vector<bool> sieve(n + 1, true);
    sieve[0] = sieve[1] = false;
    for (int p = 2; (u64)p * p <= (u64)n; ++p)
        if (sieve[p])
            for (int q = p * p; q <= n; q += p) sieve[q] = false;
    std::vector<int> result;
    for (int p = 2; p <= n; ++p) if (sieve[p]) result.push_back(p);
    return result;
}

template <class Counter>
static u64 add_prime_batch(
    u64 N, u64 p, Counter &degree,
    std::vector<u64> &values, std::vector<u64> &prefix
) {
    constexpr std::size_t CHUNK = 8192;
    const u64 modulus = p * p;
    u64 events = 0;
    values.clear();
    prefix.resize(CHUNK + 1);

    auto flush = [&]() {
        if (values.empty()) return;
        prefix[0] = 1;
        for (std::size_t i = 0; i < values.size(); ++i)
            prefix[i + 1] = (u64)((i128)prefix[i] * values[i] % modulus);
        u64 suffix_inverse = inverse(prefix[values.size()], modulus);
        for (std::size_t i = values.size(); i-- > 0;) {
            u64 value_inverse =
                (u64)((i128)suffix_inverse * prefix[i] % modulus);
            suffix_inverse =
                (u64)((i128)suffix_inverse * values[i] % modulus);
            u64 first = modulus - value_inverse;
            assert(first > 0 && first < modulus);
            for (u64 t = first; t <= N; t += modulus) {
                assert(degree[t] != std::numeric_limits<u16>::max());
                ++degree[t];
                ++events;
            }
        }
        values.clear();
    };

    // The order inside a batch is irrelevant: only the inverse residues are
    // used.  Values divisible by p are non-units and cannot solve at=-1.
    for (u64 base : {7ULL, 18ULL}) {
        for (u64 a = base; a <= N; a += 25) {
            u64 value = a % modulus;
            if (value % p == 0) continue;
            values.push_back(value);
            if (values.size() == CHUNK) flush();
        }
        flush();
    }
    return events;
}

static void self_test() {
    constexpr u64 N = 2000;
    auto primes = primes_through(43);
    std::vector<u16> batch(N + 1, 0), brute(N + 1, 0);
    std::vector<u64> values, prefix;
    for (int p0 : primes) if (p0 > 7)
        add_prime_batch(N, (u64)p0, batch, values, prefix);
    for (u64 t = 1; t <= N; ++t) {
        for (int p0 : primes) {
            u64 p = (u64)p0;
            if (p <= 7 || t % p == 0) continue;
            u64 p2 = p * p;
            u64 residue = p2 - inverse(t % p2, p2);
            for (u64 base : {7ULL, 18ULL}) {
                u64 shift = (base + 25 - residue % 25) % 25;
                shift = shift * inverse(p2 % 25, 25) % 25;
                u64 a = residue + p2 * shift;
                if (a == 0) a += 25 * p2;
                for (; a <= N; a += 25 * p2) ++brute[t];
            }
        }
    }
    assert(batch == brute);
}

int main(int argc, char **argv) {
    u64 N = 3'000'000;
    u64 cutoff = 1000;
    u64 upper = 28'540;
    if (argc > 1) N = std::stoull(argv[1]);
    if (argc > 2) cutoff = std::stoull(argv[2]);
    if (argc > 3) upper = std::stoull(argv[3]);
    if (argc > 5 || cutoff >= upper || upper > 100'000) return 2;
    self_test();

    std::vector<bool> diagonal_marker;
    u64 marker_count = 0;
    if (argc > 4) {
        diagonal_marker.assign(N + 1, false);
        const std::regex file_pattern(R"(^MarkerSequenceChunk[0-9]{4}\.lean$)");
        const std::regex leaf_pattern(R"(\.leaf ([0-9]+)\))");
        std::vector<std::filesystem::path> marker_files;
        for (const auto &entry : std::filesystem::directory_iterator(argv[4])) {
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

    auto all_primes = primes_through((int)upper);
    std::vector<int> primes;
    for (int p : all_primes)
        if ((u64)p > cutoff) primes.push_back(p);

    int threads = 1;
#ifdef _OPENMP
    threads = omp_get_max_threads();
#endif
    std::vector<std::vector<u16>> local(
        (std::size_t)threads, std::vector<u16>(N + 1, 0)
    );
    std::vector<u64> thread_events((std::size_t)threads, 0);

    #pragma omp parallel
    {
        int id = 0;
#ifdef _OPENMP
        id = omp_get_thread_num();
#endif
        std::vector<u64> values;
        std::vector<u64> prefix;
        values.reserve(8192);
        prefix.reserve(8193);
        u64 events = 0;
        #pragma omp for schedule(dynamic, 1)
        for (std::int64_t index = 0;
             index < (std::int64_t)primes.size(); ++index) {
            events += add_prime_batch(
                N, (u64)primes[(std::size_t)index], local[id], values, prefix
            );
        }
        thread_events[(std::size_t)id] = events;
    }

    u64 total_events =
        std::accumulate(thread_events.begin(), thread_events.end(), 0ULL);
    std::tuple<u32, u64> maximum{0, 0};
    std::tuple<u32, u64> maximum_even{0, 0};
    std::tuple<u32, u64> maximum_even_nonbase{0, 0};
    for (u64 t = 1; t <= N; ++t) {
        if (!diagonal_marker.empty() && !diagonal_marker[t]) continue;
        u32 count = 0;
        for (int id = 0; id < threads; ++id) count += local[id][t];
        maximum = std::max(maximum, std::make_tuple(count, t));
        if (t % 2 == 0)
            maximum_even =
                std::max(maximum_even, std::make_tuple(count, t));
        if (t % 2 == 0 && t % 25 != 7 && t % 25 != 18)
            maximum_even_nonbase = std::max(
                maximum_even_nonbase, std::make_tuple(count, t)
            );
    }
    auto [count, pivot] = maximum;
    auto [even_count, even_pivot] = maximum_even;
    auto [nonbase_count, nonbase_pivot] = maximum_even_nonbase;
    std::cout << "N=" << N << " cutoff=" << cutoff << " upper=" << upper
              << " primes=" << primes.size() << " threads=" << threads
              << " marker_count=" << marker_count
              << " incidence_events=" << total_events
              << " maximum=" << count << '@' << pivot
              << " even_maximum=" << even_count << '@' << even_pivot
              << " even_nonbase_maximum=" << nonbase_count << '@'
              << nonbase_pivot << '\n';
    std::cout << "PASS exhaustive high-prime one-form incidence upper box\n";
}
