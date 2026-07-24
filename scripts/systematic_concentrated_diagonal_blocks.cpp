// Exact block certificate for the concentrated mod-900 diagonal.
//
// The truncated Mobius contribution is generated event by event.  For each
// squarefree s <= R composed of primes 1 mod 4, and every root of -1 mod s^2,
// the arithmetic progression is accumulated at the first block endpoint that
// contains the event.  The 18 concentration sets decompose as
//
//   U_25 - E_e + Cell_(e,c),  e in {0,2}, c mod 9,
//
// so one event updates at most three arrays.  On a block [L,U], monotonicity
// of the actual diagonal count gives count(N)/N <= upper(U)/L.

#include <algorithm>
#include <array>
#include <cassert>
#include <cmath>
#include <cstdint>
#include <iostream>
#include <limits>
#include <numeric>
#include <tuple>
#include <vector>

using u64 = std::uint64_t;
using i64 = std::int64_t;
using u128 = unsigned __int128;
using i128 = __int128;

static u64 mod_mul(u64 a, u64 b, u64 m) {
    return static_cast<u64>((u128)a * b % m);
}

static u64 mod_pow(u64 a, u64 e, u64 m) {
    u64 r = 1;
    while (e) {
        if (e & 1) r = mod_mul(r, a, m);
        a = mod_mul(a, a, m);
        e >>= 1;
    }
    return r;
}

static i128 egcd(i128 a, i128 b, i128 &x, i128 &y) {
    if (!b) { x = 1; y = 0; return a; }
    i128 x1, y1;
    i128 g = egcd(b, a % b, x1, y1);
    x = y1;
    y = x1 - (a / b) * y1;
    return g;
}

static u64 mod_inv(u64 a, u64 m) {
    i128 x, y;
    i128 g = egcd(a, m, x, y);
    assert(g == 1);
    x %= static_cast<i128>(m);
    if (x < 0) x += m;
    return static_cast<u64>(x);
}

static u64 sqrt_minus_one(u64 p) {
    u64 q = p - 1, s = 0;
    while ((q & 1) == 0) { q >>= 1; ++s; }
    u64 z = 2;
    while (mod_pow(z, (p - 1) / 2, p) != p - 1) ++z;
    u64 m = s;
    u64 c = mod_pow(z, q, p);
    u64 t = mod_pow(p - 1, q, p);
    u64 r = mod_pow(p - 1, (q + 1) / 2, p);
    while (t != 1) {
        u64 i = 1, v = mod_mul(t, t, p);
        while (v != 1) { v = mod_mul(v, v, p); ++i; }
        u64 b = mod_pow(c, u64(1) << (m - i - 1), p);
        r = mod_mul(r, b, p);
        t = mod_mul(t, mod_mul(b, b, p), p);
        c = mod_mul(b, b, p);
        m = i;
    }
    assert(mod_mul(r, r, p) == p - 1);
    return r;
}

static std::array<u64, 2> roots_prime_square(u64 p) {
    u64 r = sqrt_minus_one(p);
    u64 p2 = p * p;
    u64 quotient = (r * r + 1) / p;
    u64 correction = mod_mul(quotient % p, mod_inv((2 * r) % p, p), p);
    u64 lifted = (r + p2 - correction * p) % p2;
    assert((mod_mul(lifted, lifted, p2) + 1) % p2 == 0);
    return {lifted, p2 - lifted};
}

// Exact audit of the analytic diagonal envelope.  We use the elementary
// rational bound log(20,000,000)+2 < 19.  Indeed e>2.7 from its positive
// Taylor series and 2.7^17>20,000,000.  Hence the quantity below is an
// honest rational upper bound, and the comparison is performed entirely in
// unsigned 128-bit integer arithmetic.  The largest cross-product occurring
// for maxN <= 2,000,000,000 is below 2^128.
static bool diagonal_below(
    i64 partial, u64 U, u64 L, u64 R,
    u64 theta_num, u64 theta_den,
    u64 ceiling_num, u64 ceiling_den = 1'000'000
) {
    assert(partial >= 0);
    const u128 r2 = (u128)R * R;
    const u128 numerator =
        (u128)partial * theta_den * r2
        + (u128)U * 2 * theta_num * 19 * R
        + (u128)13 * ((u128)U * U + 1) * theta_den;
    const u128 denominator = (u128)theta_den * r2 * L;
    return numerator * ceiling_den < denominator * ceiling_num;
}

struct Audit {
    u64 R = 20'000'000;
    u64 maxN = 1'999'999'999;
    std::vector<u64> endpoints;
    std::vector<u64> lowers;
    std::vector<int> primes;
    std::vector<std::array<u64, 2>> prime_roots;
    std::vector<i64> diff_u;
    std::array<std::vector<i64>, 4> diff_e;
    std::array<std::vector<i64>, 8> diff_r8;
    std::array<std::vector<i64>, 9> diff_e2_cell;
    std::array<std::array<std::vector<i64>, 9>, 4> diff_cell;
    // Cells refined by the residue modulo 49.  The odd rows certify the
    // capacitated matching alternative; r_4=2 also certifies the E1
    // fibre-concentration alternative.
    std::array<std::array<std::array<std::vector<i64>, 49>, 9>, 4>
        diff_cell49;
    u64 nodes = 1;
    u64 root_terms = 1;
    u64 events = 0;

    explicit Audit(u64 lower = 200'000'000,
                   u64 upper = 2'000'000'000) : maxN(upper - 1) {
        assert(1 <= lower && lower < upper);
        u64 L = lower;
        while (L <= maxN) {
            u64 U = std::min(maxN, (L * 201) / 200 - 1); // < 0.5% width
            for (u64 boundary : {300'000'000ULL, 500'000'000ULL, 1'000'000'000ULL})
                if (L < boundary && U >= boundary) U = boundary - 1;
            if (U < L) U = L;
            lowers.push_back(L);
            endpoints.push_back(U);
            L = U + 1;
        }
        const std::size_t n = endpoints.size();
        diff_u.assign(n, 0);
        for (auto &v : diff_e) v.assign(n, 0);
        for (auto &v : diff_r8) v.assign(n, 0);
        for (auto &v : diff_e2_cell) v.assign(n, 0);
        for (auto &by_c : diff_cell) for (auto &v : by_c) v.assign(n, 0);
        for (auto &by_c : diff_cell49)
            for (auto &by_q : by_c) for (auto &v : by_q) v.assign(n, 0);
    }

    void sieve() {
        std::vector<bool> is_prime(R + 1, true);
        is_prime[0] = is_prime[1] = false;
        for (u64 p = 2; p * p <= R; ++p) if (is_prime[p])
            for (u64 q = p * p; q <= R; q += p) is_prime[q] = false;
        for (u64 p = 13; p <= R; p += 4) if (is_prime[p]) primes.push_back((int)p);
        prime_roots.resize(primes.size(), {0, 0});
    }

    void add_event(u64 x, int sign) {
        if (x % 25 == 7 || x % 25 == 18) return;
        auto it = std::lower_bound(endpoints.begin(), endpoints.end(), x);
        if (it == endpoints.end()) return;
        std::size_t j = static_cast<std::size_t>(it - endpoints.begin());
        diff_u[j] += sign;
        int r4 = (int)(x % 4), c = (int)(x % 9);
        diff_e[r4][j] += sign;
        diff_r8[x % 8][j] += sign;
        if (x % 8 == 4) diff_e2_cell[c][j] += sign;
        diff_cell[r4][c][j] += sign;
        diff_cell49[r4][c][x % 49][j] += sign;
        ++events;
    }

    void visit(std::size_t start, u64 s, u64 modulus,
               const std::vector<u64> &roots, int sign) {
        u64 limit = R / s;
        for (std::size_t i = start; i < primes.size() && (u64)primes[i] <= limit; ++i) {
            u64 p = (u64)primes[i], p2 = p * p;
            if (prime_roots[i][0] == 0) prime_roots[i] = roots_prime_square(p);
            u64 inv = mod_inv(modulus % p2, p2);
            std::vector<u64> next;
            next.reserve(roots.size() * 2);
            for (u64 a : roots) for (u64 b : prime_roots[i]) {
                u64 delta = (b + p2 - a % p2) % p2;
                u64 t = mod_mul(delta, inv, p2);
                u64 x = a + static_cast<u64>((u128)modulus * t);
                next.push_back(x);
            }
            u64 ns = s * p, nmod = modulus * p2;
            int nsign = -sign;
            ++nodes;
            root_terms += next.size();
            for (u64 root : next) {
                if (root > maxN) continue;
                for (u64 x = root; x <= maxN; ) {
                    add_event(x, nsign);
                    if (maxN - x < nmod) break;
                    x += nmod;
                }
            }
            visit(i + 1, ns, nmod, next, nsign);
        }
    }

    static u64 residue_count(u64 N, int e, int c) {
        u64 cycles = N / 900, rem = N % 900;
        u64 count = cycles * 644;
        for (u64 x = 1; x <= rem; ++x)
            if (x % 25 != 7 && x % 25 != 18 && ((int)(x % 4) != e || (int)(x % 9) == c))
                ++count;
        return count;
    }

    void report(bool diagonal_only = false) {
        i64 cu = 0;
        std::array<i64, 4> ce{0, 0, 0, 0};
        std::array<i64, 8> cr8{0, 0, 0, 0, 0, 0, 0, 0};
        std::array<i64, 9> ce2c{0, 0, 0, 0, 0, 0, 0, 0, 0};
        std::array<std::array<i64, 9>, 4> cc{};
        std::array<std::array<std::array<i64, 49>, 9>, 4> c49{};
        std::cout.precision(18);
        std::cout << "# blocks=" << endpoints.size() << " R=" << R
                  << " nodes=" << nodes << " root_terms=" << root_terms
                  << " events=" << events << "\n";
        long double worst_slack = std::numeric_limits<long double>::infinity();
        std::tuple<u64, u64, long double, long double, long double> worst_block{};
        std::array<long double, 6> branch_max{};
        std::array<std::pair<u64, u64>, 6> branch_witness{};
        std::array<long double, 3> parity_diagonal_max{-1, -1, -1};
        std::array<std::pair<u64, u64>, 3> parity_diagonal_witness{};
        const bool first_low_mode =
            lowers.front() == 1'500'000 && maxN == 2'999'999;
        const bool second_low_mode =
            lowers.front() == 3'000'000 && maxN == 4'999'999;
        for (std::size_t j = 0; j < endpoints.size(); ++j) {
            cu += diff_u[j];
            for (int e = 0; e < 4; ++e) {
                ce[e] += diff_e[e][j];
                for (int c = 0; c < 9; ++c) cc[e][c] += diff_cell[e][c][j];
            }
            for (int r = 0; r < 8; ++r) cr8[r] += diff_r8[r][j];
            for (int c = 0; c < 9; ++c) ce2c[c] += diff_e2_cell[c][j];
            for (int e = 0; e < 4; ++e)
                for (int c = 0; c < 9; ++c)
                    for (int q = 0; q < 49; ++q)
                        c49[e][c][q] += diff_cell49[e][c][q][j];
            u64 U = endpoints[j], L = lowers[j];
            auto diagonal_ratio = [&](
                i64 partial, u64 theta_num, u64 theta_den,
                u64 ceiling_num, u64 ceiling_den = 1'000'000ULL
            ) {
                // Below five million the paper uses only the unrestricted,
                // odd-union, and one-odd projections.  Give these their
                // exact block-specific ceilings and relax every unused
                // refined projection to the trivial ceiling 1.
                if (first_low_mode || second_low_mode) {
                    if (ceiling_den == 1'000'000
                        && theta_num == 23 && theta_den == 25
                        && ceiling_num == 25'294) {
                        ceiling_num = first_low_mode ? 25'297 : 25'295;
                    } else if (ceiling_den == 1'000'000
                               && theta_num == 23 && theta_den == 50
                               && ceiling_num == 12'652) {
                        ceiling_num = first_low_mode ? 12'657 : 12'655;
                    } else if (ceiling_den == 1'000'000
                               && theta_num == 23 && theta_den == 100
                               && ceiling_num == 6'330) {
                        ceiling_num = first_low_mode ? 6'337 : 6'333;
                    } else {
                        ceiling_num = ceiling_den;
                    }
                }
                if (!diagonal_below(
                        partial, U, L, R, theta_num, theta_den,
                        ceiling_num, ceiling_den)) {
                    std::cerr << "FAIL rational diagonal ceiling at block="
                              << L << ',' << U << " partial=" << partial
                              << " theta=" << theta_num << '/' << theta_den
                              << " ceiling=" << ceiling_num << '/'
                              << ceiling_den << '\n';
                    std::exit(1);
                }
                long double theta =
                    (long double)theta_num / (long double)theta_den;
                long double harmonic = 2.0L * theta * 19.0L / R;
                long double upper_count = (long double)partial
                    + (long double)U * harmonic
                    + 13.0L * (((long double)U * U) + 1.0L) / ((long double)R * R);
                return upper_count / (long double)L;
            };

            long double concentrated = -1;
            int best_e = -1, best_c = -1;
            i64 best_partial = 0;
            for (int e : {0, 2}) for (int c = 0; c < 9; ++c) {
                i64 contribution = cu - ce[e] + cc[e][c];
                i64 partial = -contribution;
                assert(partial >= 0);
                long double ratio = diagonal_ratio(
                    partial, 161, 225, 19'681);
                if (ratio > concentrated) {
                    concentrated = ratio; best_e = e; best_c = c; best_partial = partial;
                }
            }
            long double unrestricted = diagonal_ratio(
                -cu, 23, 25, 25'294);
            // After charging the valuation-1 and valuation-2 even pivots,
            // every remaining non-base pivot is odd or divisible by 8.
            i64 low_two_adic_partial = 0;
            for (int r : {0, 1, 3, 5, 7}) low_two_adic_partial -= cr8[r];
            long double low_two_adic = diagonal_ratio(
                low_two_adic_partial, 23, 40, 15'812);
            // If E_1 is sparse and E_2 is constant modulo 9, then after
            // charging E_1 the remaining pivots are odd, divisible by 8, or
            // lie in one (v_2=2, mod-9) cell.
            long double e2_cell = -1;
            for (int c = 0; c < 9; ++c) {
                i64 partial = -(cr8[0] + cr8[1] + cr8[3] + cr8[5]
                                + cr8[7] + ce2c[c]);
                e2_cell = std::max(e2_cell,
                    diagonal_ratio(partial, 529, 900, 16'164));
            }
            long double odd_union = diagonal_ratio(
                -(ce[1] + ce[3]), 23, 50, 12'652);
            long double odd_plus_cell = -1;
            for (int e : {1, 3}) for (int c = 0; c < 9; ++c) {
                int opposite = 4 - e;
                odd_plus_cell = std::max(odd_plus_cell,
                    diagonal_ratio(
                        -(ce[e] + cc[opposite][c]), 23, 90, 7'036));
            }
            // One entire odd mod-4 class together with at most k mod-9
            // cells in the opposite class.  This is the diagonal side of
            // the prime-3 collision/selection dichotomy in the low O2 row.
            std::array<long double, 9> odd_plus_cells{};
            odd_plus_cells.fill(-1);
            for (int e : {1, 3}) {
                int opposite = 4 - e;
                std::array<i64, 9> weights{};
                for (int c = 0; c < 9; ++c) weights[c] = -cc[opposite][c];
                std::sort(weights.begin(), weights.end(), std::greater<i64>());
                i64 partial = -ce[e];
                for (int k = 1; k <= 9; ++k) {
                    partial += weights[k - 1];
                    odd_plus_cells[k - 1] = std::max(
                        odd_plus_cells[k - 1],
                        diagonal_ratio(
                            partial, 23 * (9 + k), 900, 12'652));
                }
            }
            long double one_odd = std::max(
                diagonal_ratio(-ce[1], 23, 100, 6'330),
                diagonal_ratio(-ce[3], 23, 100, 6'330));
            std::array<long double, 3> parity_diagonal{
                unrestricted, odd_union, one_odd
            };
            for (std::size_t index = 0; index < parity_diagonal.size(); ++index)
                if (parity_diagonal[index] > parity_diagonal_max[index]) {
                    parity_diagonal_max[index] = parity_diagonal[index];
                    parity_diagonal_witness[index] = {L, U};
                }
            long double one_odd_cell = -1;
            for (int e : {1, 3}) for (int c = 0; c < 9; ++c)
                one_odd_cell = std::max(one_odd_cell,
                    diagonal_ratio(-cc[e][c], 23, 900, 711));
            // The maximum diagonal supported on any k of the nine mod-9
            // cells in one odd mod-4 class, or any k of all eighteen odd
            // cells.  For fixed k the main density is fixed, so choosing
            // the largest truncated contributions is exact.
            std::array<long double, 9> one_odd_cells{};
            one_odd_cells.fill(-1);
            constexpr std::array<u64, 9> one_odd_cell_ceilings{
                710, 1415, 2119, 2823, 3526, 4227, 4928, 5629, 6330
            };
            for (int e : {1, 3}) {
                std::array<i64, 9> weights{};
                for (int c = 0; c < 9; ++c) weights[c] = -cc[e][c];
                std::sort(weights.begin(), weights.end(), std::greater<i64>());
                i64 partial = 0;
                for (int k = 1; k <= 9; ++k) {
                    partial += weights[k - 1];
                    one_odd_cells[k - 1] = std::max(
                        one_odd_cells[k - 1],
                        diagonal_ratio(
                            partial, 23 * k, 900,
                            one_odd_cell_ceilings[k - 1]));
                }
            }
            std::array<i64, 18> odd_weights{};
            int odd_index = 0;
            for (int e : {1, 3}) for (int c = 0; c < 9; ++c)
                odd_weights[odd_index++] = -cc[e][c];
            std::sort(odd_weights.begin(), odd_weights.end(), std::greater<i64>());
            std::array<long double, 18> odd_cells{};
            i64 odd_partial = 0;
            for (int k = 1; k <= 18; ++k) {
                odd_partial += odd_weights[k - 1];
                odd_cells[k - 1] = diagonal_ratio(
                    odd_partial, 23 * k, 900,
                    (k <= 11) ? 7'748 : 12'652);
            }

            // Suppose s=8 or 9 odd mod-9 cells are occupied.  Give every
            // mod-49 residue capacity two.  If a matching of size eight
            // fails, capacitated Hall supplies X with
            //   |X|-2|N(X)| >= s-7.
            // For a fixed witness k=|X|, b=|N(X)|, relax the common set of
            // b fibres independently in each restricted cell.  This can
            // only enlarge the diagonal set.  Exhausting the 3^9 choices
            // (absent/full/restricted) gives an unconditional ceiling.
            std::array<long double, 2> cap49_failure{-1, -1};
            long double one_odd_cell_three49 = -1;
            for (int ei = 0; ei < 2; ++ei) {
                std::array<std::array<i64, 5>, 9> restricted{};
                for (int c = 0; c < 9; ++c) {
                    std::array<i64, 49> qweights{};
                    for (int q = 0; q < 49; ++q)
                        qweights[q] = -c49[(ei == 0) ? 1 : 3][c][q];
                    std::sort(qweights.begin(), qweights.end(), std::greater<i64>());
                    for (int b = 1; b <= 4; ++b)
                        restricted[c][b] = restricted[c][b - 1] + qweights[b - 1];
                    one_odd_cell_three49 = std::max(
                        one_odd_cell_three49,
                        diagonal_ratio(
                            restricted[c][3], 23 * 3, 44'100, 50));
                }
                int e = (ei == 0) ? 1 : 3;
                for (int s : {8, 9}) {
                    int need = s - 7;
                    for (int b = 1; b <= 4; ++b) {
                        for (int states = 0; states < 19683; ++states) {
                            int code = states, occupied = 0, k = 0;
                            i64 partial = 0;
                            for (int c = 0; c < 9; ++c) {
                                int state = code % 3;
                                code /= 3;
                                if (state == 1) {
                                    ++occupied;
                                    partial += -cc[e][c];
                                } else if (state == 2) {
                                    ++occupied;
                                    ++k;
                                    partial += restricted[c][b];
                                }
                            }
                            if (occupied != s || k - 2 * b < need) continue;
                            cap49_failure[s - 8] = std::max(
                                cap49_failure[s - 8],
                                diagonal_ratio(
                                    partial,
                                    23 * ((s - k) * 49 + k * b),
                                    44'100,
                                    (s == 8) ? 3'572 : 3'587));
                        }
                    }
                }
            }
            // E1_0 is the diagonal supported away from the valuation-one
            // class r_4=2.  E1_k then restores an arbitrary choice of k of
            // its nine mod-9 cells.  Keeping k=0 explicit is needed when
            // every occupied E1 cell is trapped in a q^2 fibre.
            long double e1_zero = diagonal_ratio(
                -(cu - ce[2]), 23 * 27, 900, 19'681);
            std::array<i64, 9> e1_q49_weight{};
            for (int c = 0; c < 9; ++c)
                for (int q = 0; q < 49; ++q)
                    e1_q49_weight[c] = std::max(
                        e1_q49_weight[c], -c49[2][c][q]);
            std::sort(e1_q49_weight.begin(), e1_q49_weight.end(),
                      std::greater<i64>());
            std::array<long double, 9> e1_q49_cells{};
            i64 e1_q49_partial = -(cu - ce[2]);
            for (int k = 1; k <= 9; ++k) {
                e1_q49_partial += e1_q49_weight[k - 1];
                e1_q49_cells[k - 1] = diagonal_ratio(
                    e1_q49_partial,
                    23 * (27 * 49 + k), 44'100, 19'113);
            }
            std::array<long double, 9> e1_cells{}, e2_cells{};
            e1_cells.fill(-1);
            e2_cells.fill(-1);
            for (int mask = 1; mask < (1 << 9); ++mask) {
                int k = __builtin_popcount((unsigned)mask);
                i64 e1_contribution = cu - ce[2];
                i64 e2_partial = -(cr8[0] + cr8[1] + cr8[3] + cr8[5] + cr8[7]);
                for (int c = 0; c < 9; ++c) if (mask & (1 << c)) {
                    e1_contribution += cc[2][c];
                    e2_partial -= ce2c[c];
                }
                e1_cells[k - 1] = std::max(
                    e1_cells[k - 1],
                    diagonal_ratio(-e1_contribution,
                                   23 * (27 + k), 900,
                                   (k == 1) ? 19'681 : 25'294));
                e2_cells[k - 1] = std::max(
                    e2_cells[k - 1],
                    diagonal_ratio(e2_partial,
                                   23 * (45 + k), 1800, 18'973));
            }
            if (diagonal_only) {
                std::cout << L << ',' << U << ',' << unrestricted << ','
                          << concentrated << ',' << low_two_adic << ','
                          << e2_cell << ',' << odd_union << ','
                          << odd_plus_cell << ',' << one_odd
                          << ',' << one_odd_cell << ',' << e1_zero;
                for (long double value : e1_cells) std::cout << ',' << value;
                for (long double value : e2_cells) std::cout << ',' << value;
                for (long double value : e1_q49_cells) std::cout << ',' << value;
                for (long double value : one_odd_cells) std::cout << ',' << value;
                for (long double value : odd_cells) std::cout << ',' << value;
                for (long double value : cap49_failure) std::cout << ',' << value;
                std::cout << ',' << one_odd_cell_three49;
                for (long double value : odd_plus_cells) std::cout << ',' << value;
                std::cout << '\n';
                continue;
            }
            // Uniform actual-support root bounds on the four product blocks.
            // Each already includes the monotone Dusart intermediate-prime
            // term and the safe Y >= N/(split+1) transformed-root term.
            long double root;
            if (L < 300'000'000ULL) root = 0.008954353732912L;
            else if (L < 500'000'000ULL) root = 0.007667014915985L;
            else if (L < 1'000'000'000ULL) root = 0.006334916183438L;
            else root = 0.004880538114951L;

            // cutoff-131 finite three-form survivor with common primes 3,7,
            // inactive 2, plus the integrated p>131 square tail.
            long double finite_concentrated = 0.010455348688633490L
                + 0.000301829520000000L + 96754.0L / (long double)L;
            constexpr long double eta = 0.000160000000000000L;
            std::array<std::pair<const char *, long double>, 6> rows{{
                {"even-generic", unrestricted + 0.003588241468298516L
                    + 90132.0L / (long double)L + root},
                {"even-concentrated", concentrated + finite_concentrated + root},
                {"odd-two", odd_union + 0.009509449487708139L
                    + 99730.0L / (long double)L + eta + root},
                {"odd-two-common3", odd_union + 0.013116808821946251L
                    + 96360.0L / (long double)L + eta + root},
                {"odd-one", one_odd + 0.022986274906497287L
                    + 106820.0L / (long double)L + eta + root},
                {"odd-one-common23", one_odd_cell + 0.028747446508836120L
                    + 103216.0L / (long double)L + eta + root},
            }};
            for (std::size_t b = 0; b < rows.size(); ++b) {
                if (rows[b].second > branch_max[b]) {
                    branch_max[b] = rows[b].second;
                    branch_witness[b] = {L, U};
                }
            }
            auto controlling = *std::max_element(rows.begin(), rows.end(),
                [](auto const &a, auto const &b) { return a.second < b.second; });
            long double total = controlling.second;
            long double target = 1.0L / 25.0L - 7.0L / (25.0L * (long double)L);
            long double slack = target - total;
            if (slack < worst_slack) {
                worst_slack = slack;
                worst_block = {L, U, concentrated, total, target};
            }
            if (!(slack > 0)) {
                std::cerr << "FAIL block=" << L << ',' << U
                          << " total=" << total << " target=" << target << '\n';
                std::exit(1);
            }
            std::cout << L << ',' << U << ',' << concentrated << ',' << best_e << ','
                      << best_c << ',' << best_partial << ',' << root << ','
                      << controlling.first << ',' << total << ',' << target << ',' << slack << '\n';
        }
        if (diagonal_only) {
            constexpr std::array<const char *, 3> names{
                "unrestricted", "odd_union", "one_odd"
            };
            for (std::size_t index = 0; index < names.size(); ++index)
                std::cout << "# parity_diagonal=" << names[index]
                          << " maximum=" << parity_diagonal_max[index]
                          << " witness="
                          << parity_diagonal_witness[index].first << ','
                          << parity_diagonal_witness[index].second << '\n';
            if (first_low_mode) {
                std::cout << "# PASS exact rational first-low-block"
                          << " parity diagonal ceilings\n";
            } else if (second_low_mode) {
                std::cout << "# PASS exact rational second-low-block"
                          << " parity diagonal ceilings\n";
            }
            std::cout << "# PASS exact rational diagonal ceilings"
                      << " (log(R)+2<19)\n";
            return;
        }
        auto [wL, wU, wdiag, wtotal, wtarget] = worst_block;
        std::cout << "# PASS worst_block=" << wL << ',' << wU
                  << " diagonal=" << wdiag << " total=" << wtotal
                  << " target=" << wtarget << " slack=" << worst_slack << '\n';
        constexpr std::array<const char *, 6> names{
            "even-generic", "even-concentrated", "odd-two",
            "odd-two-common3", "odd-one", "odd-one-common23"};
        for (std::size_t b = 0; b < names.size(); ++b)
            std::cout << "# branch=" << names[b] << " maximum=" << branch_max[b]
                      << " witness=" << branch_witness[b].first << ','
                      << branch_witness[b].second << '\n';
    }
};

int main(int argc, char **argv) {
    u64 lower = 200'000'000, upper = 2'000'000'000;
    bool diagonal_only = false;
    if (argc == 3) {
        lower = std::stoull(argv[1]);
        upper = std::stoull(argv[2]);
        diagonal_only = true;
    } else if (argc != 1) {
        std::cerr << "usage: systematic_concentrated_diagonal_blocks [LOWER UPPER]\n";
        return 2;
    }
    Audit audit(lower, upper);
    audit.sieve();
    audit.visit(0, 1, 1, std::vector<u64>{0}, 1);
    audit.report(diagonal_only);
}
