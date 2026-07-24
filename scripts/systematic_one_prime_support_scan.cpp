// Exact one-prime quotient-support maxima on [1,M].
//
// For every admissible non-5 odd prime p <= N, count the m in each nonzero
// mod-5 square coset which are quadratic residues modulo p.  The three even
// quotient congruences m=1 mod 2,4,8 are counted simultaneously.  For p>M,
// quadratic reciprocity and precomputed residue tables for primes q<=M avoid
// an O(pi(N)*M*log N) modular-exponentiation scan.

#include <algorithm>
#include <array>
#include <cassert>
#include <cstdint>
#include <iostream>
#include <string>
#include <vector>

using u64 = std::uint64_t;

static u64 mod_pow(u64 a, u64 e, u64 m) {
    u64 r = 1;
    while (e) {
        if (e & 1) r = (u64)((__uint128_t)r * a % m);
        a = (u64)((__uint128_t)a * a % m);
        e >>= 1;
    }
    return r;
}

int main(int argc, char **argv) {
    if (argc != 3) {
        std::cerr << "usage: systematic_one_prime_support_scan N M\n";
        return 2;
    }
    int N = std::stoi(argv[1]);
    int M = std::stoi(argv[2]);
    assert(N >= 3 && M >= 1);

    std::vector<int> spf(std::max(N, M) + 1);
    std::vector<int> primes;
    for (int i = 2; i < (int)spf.size(); ++i) {
        if (!spf[i]) { spf[i] = i; primes.push_back(i); }
        for (int p : primes) {
            if (p > spf[i] || (u64)i * p >= spf.size()) break;
            spf[i * p] = p;
        }
    }

    std::vector<int> small_primes;
    std::vector<std::vector<std::int8_t>> symbol(M + 1);
    for (int q : primes) {
        if (q > M) break;
        small_primes.push_back(q);
        symbol[q].resize(q);
        for (int r = 1; r < q; ++r) {
            u64 value = mod_pow((u64)r, (q - 1) / 2, q);
            symbol[q][r] = (value == 1) ? 1 : -1;
        }
    }

    // label 0 is odd (no 2-adic quotient restriction), then v2=1,2,>=3.
    constexpr std::array<int, 4> modulus{1, 2, 4, 8};
    std::array<std::array<int, 2>, 4> maximum{};
    std::array<std::array<int, 2>, 4> witness{};
    std::vector<std::int8_t> prime_symbol(M + 1), chi(M + 1);
    chi[1] = 1;

    u64 scanned = 0;
    for (int p : primes) {
        if (p > N) break;
        if (p == 2 || p == 5) continue;
        ++scanned;
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
        std::array<std::array<int, 2>, 4> count{};
        for (int m = 1; m <= M; ++m) {
            if (m == 1) chi[m] = 1;
            else chi[m] = (std::int8_t)(
                prime_symbol[spf[m]] * chi[m / spf[m]]
            );
            if (chi[m] != 1 || m % 5 == 0) continue;
            int coset = (m % 5 == 1 || m % 5 == 4) ? 0 : 1;
            for (int label = 0; label < 4; ++label)
                if (m % modulus[label] == 1 % modulus[label])
                    ++count[label][coset];
        }
        for (int label = 0; label < 4; ++label)
            for (int coset = 0; coset < 2; ++coset)
                if (count[label][coset] > maximum[label][coset]) {
                    maximum[label][coset] = count[label][coset];
                    witness[label][coset] = p;
                }
    }

    constexpr std::array<const char *, 4> names{
        "odd", "v2=1", "v2=2", "v2>=3"
    };
    std::cout << "N=" << N << " M=" << M << " primes=" << scanned << '\n';
    for (int label = 0; label < 4; ++label) {
        std::cout << "label=" << names[label];
        for (int coset = 0; coset < 2; ++coset)
            std::cout << " coset" << coset << '=' << maximum[label][coset]
                      << "@" << witness[label][coset];
        std::cout << " maximum="
                  << std::max(maximum[label][0], maximum[label][1]) << '\n';
    }
}
