import Erdos848.TailTenMillionKernelRootActualRows
import Erdos848.TailFiveMillionHallTailCore

namespace Erdos848

/-!
# Literal odd-pivot Hall tails on the ten-million block

The generated transformed-root files are used only through
`actualTenMillionOddHighPoints`.  The intermediate-prime contribution is the
already kernel-checked reciprocal-square theorem.  Thus the untrusted
generator never evaluates a Hall tail and Lean never repeats its search.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def tenMillionOddTailEnvelope : Rat :=
  tenMillionRootOdd7 + 6 * tenMillionSquareTail7 / 25

theorem hallBaseTailSquareCount_ratio_le_tenMillion_odd_actual
    {N : Nat} {B : Finset Nat} {pivot : Nat}
    (hLower : tenMillionLower ≤ N)
    (hUpper : N < tenMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotOdd : Odd pivot) :
    hallBaseTailSquareCount N B 7 pivot / N ≤
      tenMillionOddTailEnvelope / 3 := by
  have hN : 0 < N := by
    have := hLower
    norm_num [tenMillionLower] at this ⊢
    omega
  have hcutUpper : 7 ≤ N / TenMillionKernelRootRow.odd7.split := by
    norm_num [tenMillionLower, TenMillionKernelRootRow.split] at hLower ⊢
    omega
  let primes :=
    tailIntermediatePrimes 7
      (N / TenMillionKernelRootRow.odd7.split)
  have hmedium := twoBaseIntermediatePrimeSquareUnion_ratio_le
    (pivot := pivot) hN hcutUpper (by norm_num : 5 ≤ 7)
  have hprime : ∀ p ∈ primes, Nat.Prime p := by
    intro p hp
    exact (mem_tailIntermediatePrimes.mp hp).1
  have hcut : ∀ p ∈ primes, 7 < p := by
    intro p hp
    exact (mem_tailIntermediatePrimes.mp hp).2.1
  have hsquare :=
    fiveMillionSquareTail7_kernel_close primes hprime hcut
  have hsquareTen :
      (∑ p ∈ primes, reciprocalSquareQ p) ≤ tenMillionSquareTail7 := by
    simpa [tenMillionSquareTail7, fiveMillionSquareTail7Envelope] using
      hsquare
  have hmain :
      2 * (∑ p ∈ primes, reciprocalSquareQ p) / 25 ≤
        2 * tenMillionSquareTail7 / 25 := by
    gcongr
  have hsplit := hallBaseTailSquareCount_ratio_le_intermediate_add_high
    B pivot 7 (N / TenMillionKernelRootRow.odd7.split) hN
  have hhigh := actualTenMillionOddHighPoints
    hLower hUpper hBout hpivotResidual hpivotOdd
  dsimp [primes] at hmedium hsquare hmain
  calc
    hallBaseTailSquareCount N B 7 pivot / N ≤
        ((twoBasePrimeSquareUnion N pivot
          (tailIntermediatePrimes 7
            (N / TenMillionKernelRootRow.odd7.split))).card : Rat) / N +
        ((twoBaseHighTailSquarePoints N pivot
          (N / TenMillionKernelRootRow.odd7.split)).card : Rat) / N :=
      hsplit
    _ ≤
        (2 * (∑ p ∈ tailIntermediatePrimes 7
              (N / TenMillionKernelRootRow.odd7.split),
            reciprocalSquareQ p) / 25 +
          2 * ((Nat.primeCounting
              (N / TenMillionKernelRootRow.odd7.split) -
            Nat.primeCounting 7 : Nat) : Rat) / N) +
        ((twoBaseHighTailSquarePoints N pivot
          (N / TenMillionKernelRootRow.odd7.split)).card : Rat) / N := by
      gcongr
    _ =
        2 * (∑ p ∈ tailIntermediatePrimes 7
              (N / TenMillionKernelRootRow.odd7.split),
            reciprocalSquareQ p) / 25 +
        (((twoBaseHighTailSquarePoints N pivot
            (N / TenMillionKernelRootRow.odd7.split)).card : Rat) +
          2 * ((Nat.primeCounting
              (N / TenMillionKernelRootRow.odd7.split) -
            Nat.primeCounting 7 : Nat) : Rat)) / N := by
      ring
    _ ≤ 2 * tenMillionSquareTail7 / 25 +
        TenMillionKernelRootRow.odd7.envelope / 3 := by
      exact add_le_add hmain hhigh
    _ = tenMillionOddTailEnvelope / 3 := by
      simp [tenMillionOddTailEnvelope, TenMillionKernelRootRow.envelope,
        tenMillionKernelRootOdd7]
      ring

theorem hallBaseTailSquarePayment_tenMillion_odd_ratio_le
    {N : Nat} {B pivots : Finset Nat} {pivotCount threshold : Nat}
    (hLower : tenMillionLower ≤ N)
    (hUpper : N < tenMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hpivotsCard : pivots.card = pivotCount)
    (hthreshold : threshold ≤ pivotCount)
    (hpivotsResidual : pivots ⊆ hallResidual N B)
    (hpivotsOdd : ∀ pivot ∈ pivots, Odd pivot) :
    hallBaseTailSquarePayment N B pivots 7 threshold / N ≤
      ((pivotCount : Rat) /
        ((pivotCount : Rat) - (threshold : Rat) + 1) / 3) *
          tenMillionOddTailEnvelope := by
  have hsum :
      (∑ pivot ∈ pivots,
        hallBaseTailSquareCount N B 7 pivot / N) ≤
      (pivotCount : Rat) * (tenMillionOddTailEnvelope / 3) := by
    calc
      (∑ pivot ∈ pivots,
          hallBaseTailSquareCount N B 7 pivot / N) ≤
          ∑ _pivot ∈ pivots, tenMillionOddTailEnvelope / 3 :=
        Finset.sum_le_sum fun pivot hpivot =>
          hallBaseTailSquareCount_ratio_le_tenMillion_odd_actual
            hLower hUpper hBout (hpivotsResidual hpivot)
              (hpivotsOdd pivot hpivot)
      _ = (pivots.card : Rat) * (tenMillionOddTailEnvelope / 3) := by
        simp
      _ = (pivotCount : Rat) * (tenMillionOddTailEnvelope / 3) := by
        rw [hpivotsCard]
  have hthresholdRat : (threshold : Rat) ≤ (pivotCount : Rat) := by
    exact_mod_cast hthreshold
  have hden :
      0 < (pivotCount : Rat) - (threshold : Rat) + 1 := by
    linarith
  unfold hallBaseTailSquarePayment
  rw [hpivotsCard]
  change
    (∑ pivot ∈ pivots, hallBaseTailSquareCount N B 7 pivot) /
        ((pivotCount : Rat) - (threshold : Rat) + 1) / N ≤ _
  calc
    (∑ pivot ∈ pivots, hallBaseTailSquareCount N B 7 pivot) /
          ((pivotCount : Rat) - (threshold : Rat) + 1) / N =
        (∑ pivot ∈ pivots,
          hallBaseTailSquareCount N B 7 pivot / N) /
            ((pivotCount : Rat) - (threshold : Rat) + 1) := by
      rw [← Finset.sum_div]
      ring
    _ ≤ ((pivotCount : Rat) * (tenMillionOddTailEnvelope / 3)) /
          ((pivotCount : Rat) - (threshold : Rat) + 1) :=
      div_le_div_of_nonneg_right hsum hden.le
    _ = ((pivotCount : Rat) /
        ((pivotCount : Rat) - (threshold : Rat) + 1) / 3) *
          tenMillionOddTailEnvelope := by
      ring

theorem hallBaseTailSquarePayment_sixTwo_tenMillion_odd_ratio_le
    {N : Nat} {B pivots : Finset Nat}
    (hLower : tenMillionLower ≤ N)
    (hUpper : N < tenMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hpivotsCard : pivots.card = 6)
    (hpivotsResidual : pivots ⊆ hallResidual N B)
    (hpivotsOdd : ∀ pivot ∈ pivots, Odd pivot) :
    hallBaseTailSquarePayment N B pivots 7 2 / N ≤
      (2 / 5 : Rat) * tenMillionOddTailEnvelope := by
  calc
    _ ≤ ((6 : Rat) / ((6 : Rat) - (2 : Rat) + 1) / 3) *
          tenMillionOddTailEnvelope :=
      hallBaseTailSquarePayment_tenMillion_odd_ratio_le
        hLower hUpper hBout hpivotsCard (by norm_num : 2 ≤ 6)
          hpivotsResidual hpivotsOdd
    _ = (2 / 5 : Rat) * tenMillionOddTailEnvelope := by norm_num

theorem hallBaseTailSquarePayment_sixThree_tenMillion_odd_ratio_le
    {N : Nat} {B pivots : Finset Nat}
    (hLower : tenMillionLower ≤ N)
    (hUpper : N < tenMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hpivotsCard : pivots.card = 6)
    (hpivotsResidual : pivots ⊆ hallResidual N B)
    (hpivotsOdd : ∀ pivot ∈ pivots, Odd pivot) :
    hallBaseTailSquarePayment N B pivots 7 3 / N ≤
      (1 / 2 : Rat) * tenMillionOddTailEnvelope := by
  calc
    _ ≤ ((6 : Rat) / ((6 : Rat) - (3 : Rat) + 1) / 3) *
          tenMillionOddTailEnvelope :=
      hallBaseTailSquarePayment_tenMillion_odd_ratio_le
        hLower hUpper hBout hpivotsCard (by norm_num : 3 ≤ 6)
          hpivotsResidual hpivotsOdd
    _ = (1 / 2 : Rat) * tenMillionOddTailEnvelope := by norm_num

theorem hallBaseTailSquarePayment_sixFour_tenMillion_odd_ratio_le
    {N : Nat} {B pivots : Finset Nat}
    (hLower : tenMillionLower ≤ N)
    (hUpper : N < tenMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hpivotsCard : pivots.card = 6)
    (hpivotsResidual : pivots ⊆ hallResidual N B)
    (hpivotsOdd : ∀ pivot ∈ pivots, Odd pivot) :
    hallBaseTailSquarePayment N B pivots 7 4 / N ≤
      (2 / 3 : Rat) * tenMillionOddTailEnvelope := by
  calc
    _ ≤ ((6 : Rat) / ((6 : Rat) - (4 : Rat) + 1) / 3) *
          tenMillionOddTailEnvelope :=
      hallBaseTailSquarePayment_tenMillion_odd_ratio_le
        hLower hUpper hBout hpivotsCard (by norm_num : 4 ≤ 6)
          hpivotsResidual hpivotsOdd
    _ = (2 / 3 : Rat) * tenMillionOddTailEnvelope := by norm_num

theorem hallBaseTailSquarePayment_sixFive_tenMillion_odd_ratio_le
    {N : Nat} {B pivots : Finset Nat}
    (hLower : tenMillionLower ≤ N)
    (hUpper : N < tenMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hpivotsCard : pivots.card = 6)
    (hpivotsResidual : pivots ⊆ hallResidual N B)
    (hpivotsOdd : ∀ pivot ∈ pivots, Odd pivot) :
    hallBaseTailSquarePayment N B pivots 7 5 / N ≤
      tenMillionOddTailEnvelope := by
  calc
    _ ≤ ((6 : Rat) / ((6 : Rat) - (5 : Rat) + 1) / 3) *
          tenMillionOddTailEnvelope :=
      hallBaseTailSquarePayment_tenMillion_odd_ratio_le
        hLower hUpper hBout hpivotsCard (by norm_num : 5 ≤ 6)
          hpivotsResidual hpivotsOdd
    _ = tenMillionOddTailEnvelope := by norm_num

theorem hallBaseTailSquarePayment_eightThree_tenMillion_odd_ratio_le
    {N : Nat} {B pivots : Finset Nat}
    (hLower : tenMillionLower ≤ N)
    (hUpper : N < tenMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hpivotsCard : pivots.card = 8)
    (hpivotsResidual : pivots ⊆ hallResidual N B)
    (hpivotsOdd : ∀ pivot ∈ pivots, Odd pivot) :
    hallBaseTailSquarePayment N B pivots 7 3 / N ≤
      (4 / 9 : Rat) * tenMillionOddTailEnvelope := by
  calc
    _ ≤ ((8 : Rat) / ((8 : Rat) - (3 : Rat) + 1) / 3) *
          tenMillionOddTailEnvelope :=
      hallBaseTailSquarePayment_tenMillion_odd_ratio_le
        hLower hUpper hBout hpivotsCard (by norm_num : 3 ≤ 8)
          hpivotsResidual hpivotsOdd
    _ = (4 / 9 : Rat) * tenMillionOddTailEnvelope := by norm_num

theorem hallBaseTailSquarePayment_eightFour_tenMillion_odd_ratio_le
    {N : Nat} {B pivots : Finset Nat}
    (hLower : tenMillionLower ≤ N)
    (hUpper : N < tenMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hpivotsCard : pivots.card = 8)
    (hpivotsResidual : pivots ⊆ hallResidual N B)
    (hpivotsOdd : ∀ pivot ∈ pivots, Odd pivot) :
    hallBaseTailSquarePayment N B pivots 7 4 / N ≤
      (8 / 15 : Rat) * tenMillionOddTailEnvelope := by
  calc
    _ ≤ ((8 : Rat) / ((8 : Rat) - (4 : Rat) + 1) / 3) *
          tenMillionOddTailEnvelope :=
      hallBaseTailSquarePayment_tenMillion_odd_ratio_le
        hLower hUpper hBout hpivotsCard (by norm_num : 4 ≤ 8)
          hpivotsResidual hpivotsOdd
    _ = (8 / 15 : Rat) * tenMillionOddTailEnvelope := by norm_num

theorem hallBaseTailSquarePayment_fourThree_tenMillion_odd_ratio_le
    {N : Nat} {B pivots : Finset Nat}
    (hLower : tenMillionLower ≤ N)
    (hUpper : N < tenMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hpivotsCard : pivots.card = 4)
    (hpivotsResidual : pivots ⊆ hallResidual N B)
    (hpivotsOdd : ∀ pivot ∈ pivots, Odd pivot) :
    hallBaseTailSquarePayment N B pivots 7 3 / N ≤
      (2 / 3 : Rat) * tenMillionOddTailEnvelope := by
  calc
    _ ≤ ((4 : Rat) / ((4 : Rat) - (3 : Rat) + 1) / 3) *
          tenMillionOddTailEnvelope :=
      hallBaseTailSquarePayment_tenMillion_odd_ratio_le
        hLower hUpper hBout hpivotsCard (by norm_num : 3 ≤ 4)
          hpivotsResidual hpivotsOdd
    _ = (2 / 3 : Rat) * tenMillionOddTailEnvelope := by norm_num

#print axioms hallBaseTailSquareCount_ratio_le_tenMillion_odd_actual
#print axioms hallBaseTailSquarePayment_tenMillion_odd_ratio_le
#print axioms hallBaseTailSquarePayment_sixFive_tenMillion_odd_ratio_le

end Erdos848
