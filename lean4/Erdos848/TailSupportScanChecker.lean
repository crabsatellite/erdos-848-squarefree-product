import Erdos848.TailQuadraticResidue
import Erdos848.GeneratedTailSupportCoverage.Data

namespace Erdos848

/-!
## Kernel-reducible support scan for the controlling odd root row

The internal producer intersects four quadratic-residue masks with one of the
two nonzero square cosets modulo five.  A fifth, larger prime divisor only
serves as the extendability constraint on a four-prime prefix.  The definitions
below reproduce that finite search without native evaluation.
-/

/-- Count a consecutive interval without first allocating a range list. -/
def countNatRange (predicate : ℕ → Bool) (start : ℕ) : ℕ → ℕ
  | 0 => 0
  | count + 1 =>
      (if predicate start then 1 else 0) +
        countNatRange predicate (start + 1) count

/-- The two nonzero square cosets modulo five, encoded by `true` for
`{1,4}` and `false` for `{2,3}`. -/
def modFiveCosetAccepts (squareCoset : Bool) (m : ℕ) : Bool :=
  if squareCoset then m % 5 = 1 || m % 5 = 4
  else m % 5 = 2 || m % 5 = 3

/-- Boolean form of one four-prime QR-mask intersection. -/
def oddRootSupportAccepts
    (support : List ℕ) (squareCoset : Bool) (m : ℕ) : Bool :=
  modFiveCosetAccepts squareCoset m &&
    support.all fun p => decide (qrMaskAccepts p m)

/-- Exact number of surviving `m` in `1,…,M`. -/
def oddRootSurvivorCount
    (M : ℕ) (support : List ℕ) (squareCoset : Bool) : ℕ :=
  countNatRange (oddRootSupportAccepts support squareCoset) 1 M

/-- Fast bit-mask form of the same four-prime intersection. -/
def oddRootPrefixMask : List ℕ → Bool → ℕ
  | [], squareCoset =>
      if squareCoset then GeneratedTailSupportCoverage.squareCosetMask
      else GeneratedTailSupportCoverage.nonsquareCosetMask
  | p :: support, squareCoset =>
      GeneratedTailSupportCoverage.qrMask p &&&
        oddRootPrefixMask support squareCoset

/-- Popcount in fixed 64-bit chunks.  Keeping intermediate naturals word-sized
prevents a concrete 2401-bit numeral from expanding into one giant reduction
term. -/
def chunkedBitCount (chunkWidth : ℕ) : ℕ → ℕ → ℕ
  | _, 0 => 0
  | mask, chunks + 1 =>
      (mask % 2 ^ chunkWidth).bits.count true +
        chunkedBitCount chunkWidth (mask / 2 ^ chunkWidth) chunks

def oddRootMaskSurvivorCount (support : List ℕ) (squareCoset : Bool) : ℕ :=
  chunkedBitCount 64 (oddRootPrefixMask support squareCoset) 38

/-- Bit access for a little-endian list of 64-bit words. -/
def wordMaskTestBit (words : List ℕ) (index : ℕ) : Bool :=
  (words.getD (index / 64) 0).testBit (index % 64)

def oddRootSupportWord : List ℕ → Bool → ℕ → ℕ
  | [], squareCoset, wordIndex =>
      (if squareCoset then GeneratedTailSupportCoverage.squareCosetWords
       else GeneratedTailSupportCoverage.nonsquareCosetWords).getD wordIndex 0
  | p :: support, squareCoset, wordIndex =>
      (GeneratedTailSupportCoverage.qrMaskWords p).getD wordIndex 0 &&&
        oddRootSupportWord support squareCoset wordIndex

def countOddRootSupportWords
    (support : List ℕ) (squareCoset : Bool) (start : ℕ) : ℕ → ℕ
  | 0 => 0
  | count + 1 =>
      (oddRootSupportWord support squareCoset start).bits.count true +
        countOddRootSupportWords support squareCoset (start + 1) count

def oddRootWordSurvivorCount (support : List ℕ) (squareCoset : Bool) : ℕ :=
  countOddRootSupportWords support squareCoset 0 38

/-- A compact proof object asserting every bit of one QR mask was checked
against the kernel modular-power predicate. -/
structure QrMaskCertificate (M p mask : ℕ) where
  checked : allNatRange
    (fun index => mask.testBit index ==
      decide (qrMaskAccepts p (index + 1))) 0 M = true

theorem QrMaskCertificate.testBit_eq
    {M p mask index : ℕ} (certificate : QrMaskCertificate M p mask)
    (hindex : index < M) :
    mask.testBit index = decide (qrMaskAccepts p (index + 1)) := by
  have hchecked := (allNatRange_eq_true_iff _ _ _).mp certificate.checked
    index (by omega) (by omega)
  exact beq_iff_eq.mp hchecked

theorem powMod_eq_of_modEq
    {a b exponent modulus : ℕ} (hmodulus : 0 < modulus)
    (hab : a ≡ b [MOD modulus]) :
    powMod a exponent modulus = powMod b exponent modulus := by
  have habCast : (a : ZMod modulus) = (b : ZMod modulus) :=
    (ZMod.natCast_eq_natCast_iff _ _ _).2 hab
  have hcast :
      (powMod a exponent modulus : ZMod modulus) =
        (powMod b exponent modulus : ZMod modulus) := by
    rw [powMod_cast, powMod_cast, habCast]
  have hval := congrArg ZMod.val hcast
  simpa only [ZMod.val_natCast_of_lt
    (powMod_lt a exponent modulus hmodulus),
    ZMod.val_natCast_of_lt
      (powMod_lt b exponent modulus hmodulus)] using hval

theorem qrMaskAccepts_add_one_mod
    {p index : ℕ} (hp : 0 < p) :
    qrMaskAccepts p (index + 1) ↔
      qrMaskAccepts p (index % p + 1) := by
  have hmod : index + 1 ≡ index % p + 1 [MOD p] := by
    show (index + 1) % p = (index % p + 1) % p
    simp [Nat.add_mod]
  unfold qrMaskAccepts
  rw [powMod_eq_of_modEq hp hmod]

/-- A smaller QR certificate: validate one period with modular powers and
validate repetition of the stored literal mask using only bit tests. -/
structure PeriodicQrMaskCertificate (M p mask : ℕ) where
  positive : 0 < p
  periodChecked : allNatRange
    (fun index => mask.testBit index == mask.testBit (index % p)) 0 M = true
  baseChecked : allNatRange
    (fun index => mask.testBit index ==
      decide (qrMaskAccepts p (index + 1))) 0 (min M p) = true

theorem PeriodicQrMaskCertificate.testBit_eq
    {M p mask index : ℕ}
    (certificate : PeriodicQrMaskCertificate M p mask)
    (hindex : index < M) :
    mask.testBit index = decide (qrMaskAccepts p (index + 1)) := by
  have hperiod := (allNatRange_eq_true_iff _ _ _).mp
    certificate.periodChecked index (by omega) (by omega)
  have hperiodEq :
      mask.testBit index = mask.testBit (index % p) :=
    beq_iff_eq.mp hperiod
  have hmodLt : index % p < p := Nat.mod_lt _ certificate.positive
  have hmodMin : index % p < min M p := by
    rw [lt_min_iff]
    constructor
    · by_cases hpM : p ≤ M
      · exact hmodLt.trans_le hpM
      · have hindexP : index < p := lt_of_lt_of_le hindex (Nat.le_of_not_ge hpM)
        simpa [Nat.mod_eq_of_lt hindexP] using hindex
    · exact hmodLt
  have hbase := (allNatRange_eq_true_iff _ _ _).mp
    certificate.baseChecked (index % p) (by omega) (by omega)
  have hbaseEq :
      mask.testBit (index % p) =
        decide (qrMaskAccepts p (index % p + 1)) :=
    beq_iff_eq.mp hbase
  rw [hperiodEq, hbaseEq]
  have hiff := qrMaskAccepts_add_one_mod
    (index := index) certificate.positive
  by_cases horiginal : qrMaskAccepts p (index + 1)
  · have hreduced := hiff.mp horiginal
    simp [horiginal, hreduced]
  · have hreduced : ¬ qrMaskAccepts p (index % p + 1) := by
      intro h
      exact horiginal (hiff.mpr h)
    simp [horiginal, hreduced]

/-- Periodic QR validation for a word-sliced mask. -/
structure PeriodicQrWordMaskCertificate (M p : ℕ) (words : List ℕ) where
  positive : 0 < p
  periodChecked : allNatRange
    (fun index => wordMaskTestBit words index ==
      wordMaskTestBit words (index % p)) 0 M = true
  baseChecked : allNatRange
    (fun index => wordMaskTestBit words index ==
      decide (qrMaskAccepts p (index + 1))) 0 (min M p) = true

theorem PeriodicQrWordMaskCertificate.testBit_eq
    {M p index : ℕ} {words : List ℕ}
    (certificate : PeriodicQrWordMaskCertificate M p words)
    (hindex : index < M) :
    wordMaskTestBit words index =
      decide (qrMaskAccepts p (index + 1)) := by
  have hperiod := (allNatRange_eq_true_iff _ _ _).mp
    certificate.periodChecked index (by omega) (by omega)
  have hperiodEq := beq_iff_eq.mp hperiod
  have hmodLt : index % p < p := Nat.mod_lt _ certificate.positive
  have hmodMin : index % p < min M p := by
    rw [lt_min_iff]
    constructor
    · by_cases hpM : p ≤ M
      · exact hmodLt.trans_le hpM
      · have hindexP : index < p := lt_of_lt_of_le hindex (Nat.le_of_not_ge hpM)
        simpa [Nat.mod_eq_of_lt hindexP] using hindex
    · exact hmodLt
  have hbase := (allNatRange_eq_true_iff _ _ _).mp
    certificate.baseChecked (index % p) (by omega) (by omega)
  have hbaseEq := beq_iff_eq.mp hbase
  rw [hperiodEq, hbaseEq]
  have hiff := qrMaskAccepts_add_one_mod
    (index := index) certificate.positive
  by_cases horiginal : qrMaskAccepts p (index + 1)
  · have hreduced := hiff.mp horiginal
    simp [horiginal, hreduced]
  · have hreduced : ¬ qrMaskAccepts p (index % p + 1) := by
      intro h
      exact horiginal (hiff.mpr h)
    simp [horiginal, hreduced]

/-- For the support upper bound we only need a sound superset of all nonzero
squares.  Certifying the `p-1` possible roots is substantially cheaper than
recomputing an Euler power at every position. -/
structure SquareWordMaskCertificate (M p : ℕ) (words : List ℕ) where
  positive : 0 < p
  periodChecked : allNatRange
    (fun index => wordMaskTestBit words index ==
      wordMaskTestBit words (index % p)) 0 M = true
  squareChecked : allNatRange
    (fun root => decide (
      root % p = 0 ∨
      M ≤ (root * root + (p - 1)) % p ∨
      wordMaskTestBit words ((root * root + (p - 1)) % p) = true))
      1 (p - 1) = true

theorem SquareWordMaskCertificate.testBit_eq_true_of_modEq_square
    {M p m root : ℕ} {words : List ℕ}
    (certificate : SquareWordMaskCertificate M p words)
    (hm : 1 ≤ m) (hmM : m ≤ M) (hnotDvd : ¬ p ∣ m)
    (hsquare : root ^ 2 ≡ m [MOD p]) :
    wordMaskTestBit words (m - 1) = true := by
  have hindex : m - 1 < M := by omega
  have hperiod := (allNatRange_eq_true_iff _ _ _).mp
    certificate.periodChecked (m - 1) (by omega) (by omega)
  have hperiodEq := beq_iff_eq.mp hperiod
  let reducedRoot := root % p
  have hreducedRootLt : reducedRoot < p :=
    Nat.mod_lt _ certificate.positive
  have hreducedRootNe : reducedRoot ≠ 0 := by
    intro hzero
    have hrootSquareZero : root ^ 2 % p = 0 := by
      simp [Nat.pow_mod, reducedRoot, hzero]
    have hmZero : m % p = 0 := by
      have hsq : root ^ 2 % p = m % p := hsquare
      exact hsq.symm.trans hrootSquareZero
    exact hnotDvd (Nat.dvd_iff_mod_eq_zero.mpr hmZero)
  have hreducedRootPos : 1 ≤ reducedRoot := Nat.one_le_iff_ne_zero.mpr hreducedRootNe
  have hsquareChecked := (allNatRange_eq_true_iff _ _ _).mp
    certificate.squareChecked reducedRoot (by omega) (by omega)
  have hsquareCases :
      reducedRoot % p = 0 ∨
      M ≤ (reducedRoot * reducedRoot + (p - 1)) % p ∨
      wordMaskTestBit words
          ((reducedRoot * reducedRoot + (p - 1)) % p) = true :=
    of_decide_eq_true hsquareChecked
  have hrootMod : (reducedRoot * reducedRoot) % p = (root ^ 2) % p := by
    simpa [reducedRoot, pow_two] using (Nat.mul_mod root root p).symm
  have hsquareMod : root ^ 2 % p = m % p := hsquare
  have hshift :
      (reducedRoot * reducedRoot + (p - 1)) % p = (m - 1) % p := by
    have hadd :
        (reducedRoot * reducedRoot + (p - 1)) % p =
          (m + (p - 1)) % p := by
      calc
        (reducedRoot * reducedRoot + (p - 1)) % p =
            ((reducedRoot * reducedRoot) % p + (p - 1) % p) % p :=
          Nat.add_mod _ _ _
        _ = (m % p + (p - 1) % p) % p := by rw [hrootMod, hsquareMod]
        _ = (m + (p - 1)) % p := (Nat.add_mod _ _ _).symm
    have hmShift : m + (p - 1) = (m - 1) + p := by omega
    have hperiodShift : ((m - 1) + p) % p = (m - 1) % p := by
      calc
        ((m - 1) + p) % p = ((m - 1) % p + p % p) % p :=
          Nat.add_mod _ _ _
        _ = (m - 1) % p := by rw [Nat.mod_self, add_zero, Nat.mod_mod]
    exact hadd.trans ((congrArg (fun value => value % p) hmShift).trans hperiodShift)
  have hsquareBit :
      wordMaskTestBit words
          ((reducedRoot * reducedRoot + (p - 1)) % p) = true := by
    rcases hsquareCases with hzero | hlarge | hbit
    · exact (hreducedRootNe (by simpa [Nat.mod_eq_of_lt hreducedRootLt] using hzero)).elim
    · have hmodIndexLe : (m - 1) % p ≤ m - 1 := Nat.mod_le _ _
      omega
    · exact hbit
  rw [hperiodEq, ← hshift]
  exact hsquareBit

/-- The analogous checker for one of the two mod-five coset masks. -/
structure CosetMaskCertificate (M mask : ℕ) (squareCoset : Bool) where
  checked : allNatRange
    (fun index => mask.testBit index ==
      modFiveCosetAccepts squareCoset (index + 1)) 0 M = true

theorem CosetMaskCertificate.testBit_eq
    {M mask index : ℕ} {squareCoset : Bool}
    (certificate : CosetMaskCertificate M mask squareCoset)
    (hindex : index < M) :
    mask.testBit index = modFiveCosetAccepts squareCoset (index + 1) := by
  have hchecked := (allNatRange_eq_true_iff _ _ _).mp certificate.checked
    index (by omega) (by omega)
  exact beq_iff_eq.mp hchecked

structure CosetWordMaskCertificate
    (M : ℕ) (words : List ℕ) (squareCoset : Bool) where
  checked : allNatRange
    (fun index => wordMaskTestBit words index ==
      modFiveCosetAccepts squareCoset (index + 1)) 0 M = true

theorem CosetWordMaskCertificate.testBit_eq
    {M index : ℕ} {words : List ℕ} {squareCoset : Bool}
    (certificate : CosetWordMaskCertificate M words squareCoset)
    (hindex : index < M) :
    wordMaskTestBit words index =
      modFiveCosetAccepts squareCoset (index + 1) := by
  have hchecked := (allNatRange_eq_true_iff _ _ _).mp certificate.checked
    index (by omega) (by omega)
  exact beq_iff_eq.mp hchecked

/-- Legacy literal list retained while the generated table is audited.  The
actual scan below uses the producer's conservative prime superset, including
2 and 5; every genuine non-5 odd support is therefore covered. -/
def fiveMillionOddRootSupportPrimes : List ℕ :=
  [3, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71,
   73, 79, 83, 89, 97, 101, 103, 107, 109, 113, 127, 131, 137, 139, 149,
   151, 157, 163, 167, 173, 179, 181, 191, 193, 197, 199, 211, 223, 227,
   229, 233, 239, 241, 251, 257, 263, 269, 271, 277, 281, 283, 293, 307,
   311, 313, 317, 331, 337, 347, 349, 353, 359, 367, 373, 379, 383, 389,
   397, 401, 409, 419, 421, 431, 433, 439, 443, 449, 457, 461, 463, 467,
   479, 487, 491, 499, 503, 509, 521, 523, 541, 547, 557, 563, 569, 571,
   577, 587, 593, 599, 601, 607, 613, 617, 619, 631, 641, 643, 647, 653,
   659, 661, 673, 677, 683, 691, 701, 709, 719, 727, 733, 739, 743, 751,
   757, 761, 769, 773, 787, 797, 809, 811, 821, 823, 827, 829, 839, 853,
   857, 859, 863, 877, 881, 883, 887, 907, 911, 919, 929, 937, 941, 947,
   953, 967, 971, 977, 983, 991, 997, 1009, 1013, 1019, 1021, 1031, 1033,
   1039, 1049, 1051, 1061, 1063, 1069, 1087, 1091, 1093, 1097, 1103,
   1109, 1117, 1123, 1129, 1151, 1153, 1163, 1171, 1181, 1187, 1193,
   1201, 1213, 1217, 1223, 1229, 1231, 1237, 1249, 1259, 1277, 1279,
   1283, 1289, 1291, 1297, 1301, 1303, 1307, 1319, 1321, 1327, 1361,
   1367, 1373, 1381, 1399, 1409, 1423, 1427, 1429, 1433, 1439, 1447,
   1451, 1453, 1459, 1471, 1481, 1483, 1487, 1489, 1493, 1499, 1511,
   1523, 1531, 1543, 1549, 1553, 1559, 1567, 1571, 1579, 1583, 1597,
   1601, 1607, 1609, 1613, 1619, 1621, 1627, 1637, 1657, 1663, 1667,
   1669, 1693, 1697, 1699, 1709, 1721, 1723, 1733, 1741, 1747, 1753,
   1759, 1777, 1783, 1787, 1789, 1801, 1811, 1823, 1831, 1847, 1861,
   1867, 1871, 1873, 1877, 1879, 1889, 1901, 1907, 1913, 1931, 1933,
   1949, 1951, 1973, 1979, 1987, 1993, 1997, 1999, 2003, 2011, 2017,
   2027, 2029, 2039, 2053, 2063, 2069, 2081, 2083, 2087, 2089, 2099,
   2111, 2113, 2129, 2131, 2137, 2141, 2143, 2153, 2161, 2179, 2203,
   2207, 2213, 2221, 2237, 2239, 2243, 2251, 2267, 2269, 2273, 2281,
   2287, 2293, 2297, 2309, 2311, 2333, 2339, 2341, 2347, 2351, 2357,
   2371, 2377, 2381, 2383, 2389, 2393, 2399, 2411, 2417, 2423, 2437,
   2441, 2447, 2459, 2467, 2473, 2477, 2503, 2521, 2531, 2539, 2543,
   2549, 2551, 2557, 2579, 2591, 2593, 2609, 2617, 2621, 2633, 2647,
   2657, 2659, 2663, 2671, 2677, 2683, 2687, 2689, 2693, 2699, 2707,
   2711, 2713, 2719, 2729, 2731, 2741, 2749, 2753, 2767, 2777, 2789,
   2791, 2797, 2801, 2803, 2819, 2833, 2837, 2843, 2851, 2857, 2861,
   2879, 2887, 2897, 2903, 2909, 2917, 2927, 2939, 2953, 2957, 2963,
   2969, 2971, 2999, 3001, 3011, 3019, 3023, 3037, 3041, 3049, 3061,
   3067, 3079, 3083, 3089, 3109, 3119, 3121, 3137]

/-- Pruned enumeration of increasing prefixes.  At `need = 0`, the head of
the remaining prime list is the least possible fifth prime. -/
def feasibleSupportPrefixes (bound : ℕ) : ℕ → ℕ → List ℕ → List (List ℕ)
  | 0, product, p :: _ => if product * p ≤ bound then [[]] else []
  | 0, _, [] => []
  | need + 1, product, p :: primes =>
      let least := product * ((p :: primes).take (need + 2)).prod
      if bound < least then []
      else
        ((feasibleSupportPrefixes bound need (product * p) primes).map
          fun support => p :: support) ++
        feasibleSupportPrefixes bound (need + 1) product primes
  | _ + 1, _, [] => []

def fiveMillionOddRootFeasiblePrefixes : List (List ℕ) :=
  feasibleSupportPrefixes 10_000_000 4 1
    GeneratedTailSupportCoverage.supportPrimes

def fiveMillionOddRootPrefixPasses (support : List ℕ) : Bool :=
  oddRootSurvivorCount 2401 support true ≤ 70 &&
    oddRootSurvivorCount 2401 support false ≤ 70

def fiveMillionOddRootPrefixMaskPasses (support : List ℕ) : Bool :=
  oddRootWordSurvivorCount support true ≤ 70 &&
    oddRootWordSurvivorCount support false ≤ 70

set_option maxRecDepth 1000000 in
theorem fiveMillionOddRoot_feasible_prefix_count :
    fiveMillionOddRootFeasiblePrefixes.length = 1005 := by
  decide

set_option maxRecDepth 1000000 in
theorem fiveMillionOddRoot_witness_support_exact :
    oddRootSurvivorCount 2401 [13, 23, 29, 31] true = 70 := by
  decide

set_option maxRecDepth 1000000 in
theorem fiveMillionOddRoot_witness_mask_support_exact :
    oddRootWordSurvivorCount [13, 23, 29, 31] true = 70 := by
  decide

end Erdos848
