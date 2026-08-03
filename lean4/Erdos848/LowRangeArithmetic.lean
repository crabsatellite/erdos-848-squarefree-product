import Erdos848.MainTheoremCore
import Mathlib.Algebra.Order.Floor.Div

namespace Erdos848

set_option maxHeartbeats 1000000

/-!
Exact terminal arithmetic for the two low ranges.

The external scripts checked every ceiling jump.  These lemmas use the
stronger uniform estimates

* `E(N) ≤ N / 75 + constant`,
* `O(N) ≤ N / 300 + constant`, and
* `2 * ⌈N / 100⌉ ≤ N / 50 + 2`.

Consequently only the lower endpoint matters.  The upstream Hall proof now
has to provide the displayed diagonal and degree bounds; no finite scan or
floating-point margin is accepted here.
-/

/- The six blocks are a performance boundary, not a mathematical cut.  Their
union is the list of sixty primes below `300`, with `5`
omitted.  Keeping ten denominators per kernel obligation prevents rational
normalization from becoming one monolithic proof term. -/
def lowPrimeBlock0 : Finset ℕ :=
  [3, 7, 11, 13, 17, 19, 23, 29, 31, 37].toFinset

def lowPrimeBlock1 : Finset ℕ :=
  [41, 43, 47, 53, 59, 61, 67, 71, 73, 79].toFinset

def lowPrimeBlock2 : Finset ℕ :=
  [83, 89, 97, 101, 103, 107, 109, 113, 127, 131].toFinset

def lowPrimeBlock3 : Finset ℕ :=
  [137, 139, 149, 151, 157, 163, 167, 173, 179, 181].toFinset

def lowPrimeBlock4 : Finset ℕ :=
  [191, 193, 197, 199, 211, 223, 227, 229, 233, 239].toFinset

def lowPrimeBlock5 : Finset ℕ :=
  [241, 251, 257, 263, 269, 271, 277, 281, 283, 293].toFinset

def evenAPBlock (block : Finset ℕ) (N : ℕ) : ℕ :=
  block.sum fun p => 2 * (N ⌈/⌉ (25 * p * p))

def oddAPBlock (block : Finset ℕ) (N : ℕ) : ℕ :=
  block.sum fun p => 2 * (N ⌈/⌉ (100 * p * p))

def lowEvenAPCeiling (N : ℕ) : ℕ :=
  evenAPBlock lowPrimeBlock0 N + evenAPBlock lowPrimeBlock1 N +
  evenAPBlock lowPrimeBlock2 N + evenAPBlock lowPrimeBlock3 N +
  evenAPBlock lowPrimeBlock4 N + evenAPBlock lowPrimeBlock5 N

def lowOddAPCeiling (N : ℕ) : ℕ :=
  oddAPBlock lowPrimeBlock0 N + oddAPBlock lowPrimeBlock1 N +
  oddAPBlock lowPrimeBlock2 N + oddAPBlock lowPrimeBlock3 N +
  oddAPBlock lowPrimeBlock4 N + oddAPBlock lowPrimeBlock5 N

theorem ceilDiv_mul_le_add (N m : ℕ) :
    m * (N ⌈/⌉ m) ≤ N + m := by
  rw [Nat.ceilDiv_eq_add_pred_div]
  calc
    m * ((N + m - 1) / m) = ((N + m - 1) / m) * m := by ac_rfl
    _ ≤ N + m - 1 := Nat.div_mul_le_self _ _
    _ ≤ N + m := Nat.sub_le _ _

theorem ceilDiv_cast_le_add_one (N m : ℕ) (hm : 0 < m) :
    ((N ⌈/⌉ m : ℕ) : ℚ) ≤ (N : ℚ) / m + 1 := by
  have hmQ : (0 : ℚ) < m := by exact_mod_cast hm
  have hmul := ceilDiv_mul_le_add N m
  have hmulQ :
      (m : ℚ) * ((N ⌈/⌉ m : ℕ) : ℚ) ≤ (N : ℚ) + m := by
    exact_mod_cast hmul
  rw [show (N : ℚ) / m + 1 = ((N : ℚ) + m) / m by field_simp]
  rw [le_div_iff₀ hmQ]
  simpa [mul_comm] using hmulQ

private theorem evenAPBlock_cast_le
    (block : Finset ℕ) (N : ℕ) (hpos : ∀ p ∈ block, 0 < p) :
    (evenAPBlock block N : ℚ) ≤
      ∑ p ∈ block, (2 : ℚ) * ((N : ℚ) / (25 * p * p) + 1) := by
  rw [evenAPBlock, Nat.cast_sum]
  gcongr with p hp
  norm_num
  simpa only [Nat.cast_mul, Nat.cast_ofNat] using
    ceilDiv_cast_le_add_one N (25 * p * p) (by
      have := hpos p hp
      positivity)

private theorem oddAPBlock_cast_le
    (block : Finset ℕ) (N : ℕ) (hpos : ∀ p ∈ block, 0 < p) :
    (oddAPBlock block N : ℚ) ≤
      ∑ p ∈ block, (2 : ℚ) * ((N : ℚ) / (100 * p * p) + 1) := by
  rw [oddAPBlock, Nat.cast_sum]
  gcongr with p hp
  norm_num
  simpa only [Nat.cast_mul, Nat.cast_ofNat] using
    ceilDiv_cast_le_add_one N (100 * p * p) (by
      have := hpos p hp
      positivity)

private theorem evenAPBlock0_cast_le (N : ℕ) :
    (evenAPBlock lowPrimeBlock0 N : ℚ) ≤ (157 / 12500 : ℚ) * N + 20 := by
  calc
    _ ≤ ∑ p ∈ lowPrimeBlock0,
        (2 : ℚ) * ((N : ℚ) / (25 * p * p) + 1) :=
      evenAPBlock_cast_le lowPrimeBlock0 N (by
        simp [lowPrimeBlock0])
    _ ≤ (157 / 12500 : ℚ) * N + 20 := by
      simp [lowPrimeBlock0]
      have hN : (0 : ℚ) ≤ N := by positivity
      norm_num
      linarith

private theorem evenAPBlock1_cast_le (N : ℕ) :
    (evenAPBlock lowPrimeBlock1 N : ℚ) ≤ (33 / 125000 : ℚ) * N + 20 := by
  calc
    _ ≤ ∑ p ∈ lowPrimeBlock1,
        (2 : ℚ) * ((N : ℚ) / (25 * p * p) + 1) :=
      evenAPBlock_cast_le lowPrimeBlock1 N (by
        simp [lowPrimeBlock1])
    _ ≤ (33 / 125000 : ℚ) * N + 20 := by
      simp [lowPrimeBlock1]
      have hN : (0 : ℚ) ≤ N := by positivity
      norm_num
      linarith

private theorem evenAPBlock2_cast_le (N : ℕ) :
    (evenAPBlock lowPrimeBlock2 N : ℚ) ≤ (1 / 12500 : ℚ) * N + 20 := by
  calc
    _ ≤ ∑ p ∈ lowPrimeBlock2,
        (2 : ℚ) * ((N : ℚ) / (25 * p * p) + 1) :=
      evenAPBlock_cast_le lowPrimeBlock2 N (by
        simp [lowPrimeBlock2])
    _ ≤ (1 / 12500 : ℚ) * N + 20 := by
      simp [lowPrimeBlock2]
      have hN : (0 : ℚ) ≤ N := by positivity
      norm_num
      linarith

private theorem evenAPBlock3_cast_le (N : ℕ) :
    (evenAPBlock lowPrimeBlock3 N : ℚ) ≤ (1 / 25000 : ℚ) * N + 20 := by
  calc
    _ ≤ ∑ p ∈ lowPrimeBlock3,
        (2 : ℚ) * ((N : ℚ) / (25 * p * p) + 1) :=
      evenAPBlock_cast_le lowPrimeBlock3 N (by
        simp [lowPrimeBlock3])
    _ ≤ (1 / 25000 : ℚ) * N + 20 := by
      simp [lowPrimeBlock3]
      have hN : (0 : ℚ) ≤ N := by positivity
      norm_num
      linarith

private theorem evenAPBlock4_cast_le (N : ℕ) :
    (evenAPBlock lowPrimeBlock4 N : ℚ) ≤ (1 / 50000 : ℚ) * N + 20 := by
  calc
    _ ≤ ∑ p ∈ lowPrimeBlock4,
        (2 : ℚ) * ((N : ℚ) / (25 * p * p) + 1) :=
      evenAPBlock_cast_le lowPrimeBlock4 N (by
        simp [lowPrimeBlock4])
    _ ≤ (1 / 50000 : ℚ) * N + 20 := by
      simp [lowPrimeBlock4]
      have hN : (0 : ℚ) ≤ N := by positivity
      norm_num
      linarith

private theorem evenAPBlock5_cast_le (N : ℕ) :
    (evenAPBlock lowPrimeBlock5 N : ℚ) ≤ (1 / 62500 : ℚ) * N + 20 := by
  calc
    _ ≤ ∑ p ∈ lowPrimeBlock5,
        (2 : ℚ) * ((N : ℚ) / (25 * p * p) + 1) :=
      evenAPBlock_cast_le lowPrimeBlock5 N (by
        simp [lowPrimeBlock5])
    _ ≤ (1 / 62500 : ℚ) * N + 20 := by
      simp [lowPrimeBlock5]
      have hN : (0 : ℚ) ≤ N := by positivity
      norm_num
      linarith

private theorem oddAPBlock0_cast_le (N : ℕ) :
    (oddAPBlock lowPrimeBlock0 N : ℚ) ≤ (157 / 50000 : ℚ) * N + 20 := by
  calc
    _ ≤ ∑ p ∈ lowPrimeBlock0,
        (2 : ℚ) * ((N : ℚ) / (100 * p * p) + 1) :=
      oddAPBlock_cast_le lowPrimeBlock0 N (by
        simp [lowPrimeBlock0])
    _ ≤ (157 / 50000 : ℚ) * N + 20 := by
      simp [lowPrimeBlock0]
      have hN : (0 : ℚ) ≤ N := by positivity
      norm_num
      linarith

private theorem oddAPBlock1_cast_le (N : ℕ) :
    (oddAPBlock lowPrimeBlock1 N : ℚ) ≤ (33 / 500000 : ℚ) * N + 20 := by
  calc
    _ ≤ ∑ p ∈ lowPrimeBlock1,
        (2 : ℚ) * ((N : ℚ) / (100 * p * p) + 1) :=
      oddAPBlock_cast_le lowPrimeBlock1 N (by
        simp [lowPrimeBlock1])
    _ ≤ (33 / 500000 : ℚ) * N + 20 := by
      simp [lowPrimeBlock1]
      have hN : (0 : ℚ) ≤ N := by positivity
      norm_num
      linarith

private theorem oddAPBlock2_cast_le (N : ℕ) :
    (oddAPBlock lowPrimeBlock2 N : ℚ) ≤ (1 / 50000 : ℚ) * N + 20 := by
  calc
    _ ≤ ∑ p ∈ lowPrimeBlock2,
        (2 : ℚ) * ((N : ℚ) / (100 * p * p) + 1) :=
      oddAPBlock_cast_le lowPrimeBlock2 N (by
        simp [lowPrimeBlock2])
    _ ≤ (1 / 50000 : ℚ) * N + 20 := by
      simp [lowPrimeBlock2]
      have hN : (0 : ℚ) ≤ N := by positivity
      norm_num
      linarith

private theorem oddAPBlock3_cast_le (N : ℕ) :
    (oddAPBlock lowPrimeBlock3 N : ℚ) ≤ (1 / 100000 : ℚ) * N + 20 := by
  calc
    _ ≤ ∑ p ∈ lowPrimeBlock3,
        (2 : ℚ) * ((N : ℚ) / (100 * p * p) + 1) :=
      oddAPBlock_cast_le lowPrimeBlock3 N (by
        simp [lowPrimeBlock3])
    _ ≤ (1 / 100000 : ℚ) * N + 20 := by
      simp [lowPrimeBlock3]
      have hN : (0 : ℚ) ≤ N := by positivity
      norm_num
      linarith

private theorem oddAPBlock4_cast_le (N : ℕ) :
    (oddAPBlock lowPrimeBlock4 N : ℚ) ≤ (1 / 200000 : ℚ) * N + 20 := by
  calc
    _ ≤ ∑ p ∈ lowPrimeBlock4,
        (2 : ℚ) * ((N : ℚ) / (100 * p * p) + 1) :=
      oddAPBlock_cast_le lowPrimeBlock4 N (by
        simp [lowPrimeBlock4])
    _ ≤ (1 / 200000 : ℚ) * N + 20 := by
      simp [lowPrimeBlock4]
      have hN : (0 : ℚ) ≤ N := by positivity
      norm_num
      linarith

private theorem oddAPBlock5_cast_le (N : ℕ) :
    (oddAPBlock lowPrimeBlock5 N : ℚ) ≤ (1 / 250000 : ℚ) * N + 20 := by
  calc
    _ ≤ ∑ p ∈ lowPrimeBlock5,
        (2 : ℚ) * ((N : ℚ) / (100 * p * p) + 1) :=
      oddAPBlock_cast_le lowPrimeBlock5 N (by
        simp [lowPrimeBlock5])
    _ ≤ (1 / 250000 : ℚ) * N + 20 := by
      simp [lowPrimeBlock5]
      have hN : (0 : ℚ) ≤ N := by positivity
      norm_num
      linarith

theorem lowEvenAPCeiling_cast_le (N : ℕ) :
    (lowEvenAPCeiling N : ℚ) ≤ (N : ℚ) / 75 + 120 := by
  have h0 := evenAPBlock0_cast_le N
  have h1 := evenAPBlock1_cast_le N
  have h2 := evenAPBlock2_cast_le N
  have h3 := evenAPBlock3_cast_le N
  have h4 := evenAPBlock4_cast_le N
  have h5 := evenAPBlock5_cast_le N
  have hN : (0 : ℚ) ≤ N := by positivity
  norm_num [lowEvenAPCeiling] at h0 h1 h2 h3 h4 h5 ⊢
  linarith

theorem lowOddAPCeiling_cast_le (N : ℕ) :
    (lowOddAPCeiling N : ℚ) ≤ (N : ℚ) / 300 + 120 := by
  have h0 := oddAPBlock0_cast_le N
  have h1 := oddAPBlock1_cast_le N
  have h2 := oddAPBlock2_cast_le N
  have h3 := oddAPBlock3_cast_le N
  have h4 := oddAPBlock4_cast_le N
  have h5 := oddAPBlock5_cast_le N
  have hN : (0 : ℚ) ≤ N := by positivity
  norm_num [lowOddAPCeiling] at h0 h1 h2 h3 h4 h5 ⊢
  linarith

theorem twice_ceilDiv_hundred_cast_le (N : ℕ) :
    ((2 * (N ⌈/⌉ 100) : ℕ) : ℚ) ≤ (N : ℚ) / 50 + 2 := by
  have h := ceilDiv_cast_le_add_one N 100 (by norm_num)
  norm_num at h ⊢
  linarith

theorem firstLow_evenDegree_bound (N : ℕ) :
    ((lowEvenAPCeiling N + 182 + 40 : ℕ) : ℚ) ≤ (N : ℚ) / 75 + 342 := by
  have h := lowEvenAPCeiling_cast_le N
  norm_num at h ⊢
  linarith

theorem firstLow_oddDegree_bound (N : ℕ) :
    ((lowOddAPCeiling N + 268 + 40 : ℕ) : ℚ) ≤ (N : ℚ) / 300 + 428 := by
  have h := lowOddAPCeiling_cast_le N
  norm_num at h ⊢
  linarith

theorem secondLow_evenDegree_bound (N : ℕ) :
    ((lowEvenAPCeiling N + 278 + 49 : ℕ) : ℚ) ≤ (N : ℚ) / 75 + 447 := by
  have h := lowEvenAPCeiling_cast_le N
  norm_num at h ⊢
  linarith

theorem secondLow_oddDegree_bound (N : ℕ) :
    ((lowOddAPCeiling N + 383 + 49 : ℕ) : ℚ) ≤ (N : ℚ) / 300 + 552 := by
  have h := lowOddAPCeiling_cast_le N
  norm_num at h ⊢
  linarith

/-! The following relaxed forms preserve the original certificate interface.
The extra `120` was formerly paid in the set count; the sharpened downstream
reduction no longer needs that payment. -/

theorem firstLow_evenDegree_bound_relaxed (N : ℕ) :
    ((lowEvenAPCeiling N + 120 + 182 + 40 : ℕ) : ℚ) ≤
      (N : ℚ) / 75 + 462 := by
  have h := firstLow_evenDegree_bound N
  norm_num at h ⊢
  linarith

theorem firstLow_oddDegree_bound_relaxed (N : ℕ) :
    ((lowOddAPCeiling N + 120 + 268 + 40 : ℕ) : ℚ) ≤
      (N : ℚ) / 300 + 548 := by
  have h := firstLow_oddDegree_bound N
  norm_num at h ⊢
  linarith

theorem secondLow_evenDegree_bound_relaxed (N : ℕ) :
    ((lowEvenAPCeiling N + 120 + 278 + 49 : ℕ) : ℚ) ≤
      (N : ℚ) / 75 + 567 := by
  have h := secondLow_evenDegree_bound N
  norm_num at h ⊢
  linarith

theorem secondLow_oddDegree_bound_relaxed (N : ℕ) :
    ((lowOddAPCeiling N + 120 + 383 + 49 : ℕ) : ℚ) ≤
      (N : ℚ) / 300 + 672 := by
  have h := secondLow_oddDegree_bound N
  norm_num at h ⊢
  linarith

theorem firstLow_eightEven_arithmetic
    {N : ℕ} {diagonal evenDegree : ℚ}
    (hN : 1_500_000 ≤ N)
    (hdiagonal : diagonal ≤ (25_297 / 1_000_000 : ℚ) * N)
    (heven : evenDegree ≤ (N : ℚ) / 75 + 462) :
    diagonal + evenDegree < (N : ℚ) / 25 - 7 / 25 := by
  have hNq : (1_500_000 : ℚ) ≤ N := by exact_mod_cast hN
  norm_num at hdiagonal heven ⊢
  linarith

theorem firstLow_twoOddClasses_arithmetic
    {N : ℕ} {diagonal oddDegree : ℚ}
    (hN : 1_500_000 ≤ N)
    (hdiagonal : diagonal ≤ (12_657 / 1_000_000 : ℚ) * N)
    (hodd : oddDegree ≤ (N : ℚ) / 300 + 548) :
    diagonal + 7 + 4 * oddDegree < (N : ℚ) / 25 - 7 / 25 := by
  have hNq : (1_500_000 : ℚ) ≤ N := by exact_mod_cast hN
  norm_num at hdiagonal hodd ⊢
  linarith

theorem firstLow_oneOddClass_arithmetic
    {N : ℕ} {diagonal oddDegree rawClass : ℚ}
    (hN : 1_500_000 ≤ N)
    (hdiagonal : diagonal ≤ (6_337 / 1_000_000 : ℚ) * N)
    (hodd : oddDegree ≤ (N : ℚ) / 300 + 548)
    (hraw : rawClass ≤ (N : ℚ) / 50 + 2) :
    diagonal + 14 + rawClass + 3 * oddDegree <
      (N : ℚ) / 25 - 7 / 25 := by
  have hNq : (1_500_000 : ℚ) ≤ N := by exact_mod_cast hN
  norm_num at hdiagonal hodd hraw ⊢
  linarith

theorem secondLow_eightEven_arithmetic
    {N : ℕ} {diagonal evenDegree : ℚ}
    (hN : 3_000_000 ≤ N)
    (hdiagonal : diagonal ≤ (25_295 / 1_000_000 : ℚ) * N)
    (heven : evenDegree ≤ (N : ℚ) / 75 + 567) :
    diagonal + evenDegree < (N : ℚ) / 25 - 7 / 25 := by
  have hNq : (3_000_000 : ℚ) ≤ N := by exact_mod_cast hN
  norm_num at hdiagonal heven ⊢
  linarith

theorem secondLow_twoOddClasses_arithmetic
    {N : ℕ} {diagonal oddDegree : ℚ}
    (hN : 3_000_000 ≤ N)
    (hdiagonal : diagonal ≤ (12_655 / 1_000_000 : ℚ) * N)
    (hodd : oddDegree ≤ (N : ℚ) / 300 + 672) :
    diagonal + 7 + 4 * oddDegree < (N : ℚ) / 25 - 7 / 25 := by
  have hNq : (3_000_000 : ℚ) ≤ N := by exact_mod_cast hN
  norm_num at hdiagonal hodd ⊢
  linarith

theorem secondLow_oneOddClass_arithmetic
    {N : ℕ} {diagonal oddDegree rawClass : ℚ}
    (hN : 3_000_000 ≤ N)
    (hdiagonal : diagonal ≤ (6_333 / 1_000_000 : ℚ) * N)
    (hodd : oddDegree ≤ (N : ℚ) / 300 + 672)
    (hraw : rawClass ≤ (N : ℚ) / 50 + 2) :
    diagonal + 14 + rawClass + 3 * oddDegree <
      (N : ℚ) / 25 - 7 / 25 := by
  have hNq : (3_000_000 : ℚ) ≤ N := by exact_mod_cast hN
  norm_num at hdiagonal hodd hraw ⊢
  linarith

end Erdos848
