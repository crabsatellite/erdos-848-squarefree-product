import Erdos848.TailR263EvenOneRoot23High
import Erdos848.TailR263EvenThreeTail

namespace Erdos848

/-! # Literal cutoff-23 one-form tail payments for the E1 terminals -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

private theorem hallBaseTailSquareCount_ratio_le_of_evenOneHigh23
    {N pivot : Nat} {B : Finset Nat}
    (hLower : 5_000_000 ≤ N)
    (hhigh :
      ((twoBaseHighTailSquarePoints N pivot (N / 55)).card : Rat) / N +
        2 * ((Nat.primeCounting (N / 55) -
          Nat.primeCounting 23 : Nat) : Rat) / N ≤
        fiveMillionR263EvenOneRoot23Envelope / 3) :
    hallBaseTailSquareCount N B 23 pivot / N ≤
      2 * fiveMillionSquareTail23Envelope / 25 +
        fiveMillionR263EvenOneRoot23Envelope / 3 := by
  have hN : 0 < N := by omega
  have hcutUpper : 23 ≤ N / 55 := by omega
  let primes := tailIntermediatePrimes 23 (N / 55)
  have hmedium := twoBaseIntermediatePrimeSquareUnion_ratio_le
    (pivot := pivot) hN hcutUpper (by norm_num : 5 ≤ 23)
  have hprime : ∀ p ∈ primes, Nat.Prime p := by
    intro p hp
    exact (mem_tailIntermediatePrimes.mp hp).1
  have hcut : ∀ p ∈ primes, 23 < p := by
    intro p hp
    exact (mem_tailIntermediatePrimes.mp hp).2.1
  have hsquare := fiveMillionSquareTail23_kernel_close primes hprime hcut
  have hmain :
      2 * (∑ p ∈ primes, reciprocalSquareQ p) / 25 ≤
        2 * fiveMillionSquareTail23Envelope / 25 := by
    gcongr
  have hsplit := hallBaseTailSquareCount_ratio_le_intermediate_add_high
    B pivot 23 (N / 55) hN
  dsimp [primes] at hmedium hsquare hmain
  calc
    hallBaseTailSquareCount N B 23 pivot / N ≤
        ((twoBasePrimeSquareUnion N pivot
          (tailIntermediatePrimes 23 (N / 55))).card : Rat) / N +
          ((twoBaseHighTailSquarePoints
            N pivot (N / 55)).card : Rat) / N := hsplit
    _ ≤
        (2 * (∑ p ∈ tailIntermediatePrimes 23 (N / 55),
          reciprocalSquareQ p) / 25 +
          2 * ((Nat.primeCounting (N / 55) -
            Nat.primeCounting 23 : Nat) : Rat) / N) +
          ((twoBaseHighTailSquarePoints
            N pivot (N / 55)).card : Rat) / N := by
      gcongr
    _ ≤ 2 * fiveMillionSquareTail23Envelope / 25 +
        fiveMillionR263EvenOneRoot23Envelope / 3 := by
      linarith

theorem hallBaseTailSquareCount_ratio_le_r263_evenOne23
    {N : Nat} {B : Finset Nat} {pivot : Nat}
    (hLower : 5_000_000 ≤ N)
    (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotMod : pivot % 4 = 2) :
    hallBaseTailSquareCount N B 23 pivot / N ≤
      2 * fiveMillionSquareTail23Envelope / 25 +
        fiveMillionR263EvenOneRoot23Envelope / 3 := by
  exact hallBaseTailSquareCount_ratio_le_of_evenOneHigh23
    hLower (fiveMillionR263EvenOneHighPoints23
      hLower hUpper hBout hpivotResidual hpivotMod)

theorem hallBaseTailSquarePayment_fourThree_r263_evenOne23_ratio_le
    {N : Nat} {B pivots : Finset Nat}
    (hLower : 5_000_000 ≤ N)
    (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hpivots : pivots ⊆ fiveMillionValuationPart N B .evenOne)
    (hcard : pivots.card = 4) :
    hallBaseTailSquarePayment N B pivots 23 3 / N ≤
      4 * fiveMillionSquareTail23Envelope / 25 +
        2 * fiveMillionR263EvenOneRoot23Envelope / 3 := by
  have hper : ∀ pivot ∈ pivots,
      hallBaseTailSquareCount N B 23 pivot / N ≤
        2 * fiveMillionSquareTail23Envelope / 25 +
          fiveMillionR263EvenOneRoot23Envelope / 3 := by
    intro pivot hpivot
    have hpivotPart := hpivots hpivot
    exact hallBaseTailSquareCount_ratio_le_r263_evenOne23
      hLower hUpper hBout
      (fiveMillionValuationPart_subset_residual N B .evenOne hpivotPart)
      (fiveMillionValuationPart_evenOne hpivotPart)
  have hsum :
      (∑ pivot ∈ pivots,
        hallBaseTailSquareCount N B 23 pivot / N) ≤
      4 * (2 * fiveMillionSquareTail23Envelope / 25 +
        fiveMillionR263EvenOneRoot23Envelope / 3) := by
    have h := Finset.sum_le_sum fun pivot hpivot => hper pivot hpivot
    simpa [hcard, mul_add] using h
  unfold hallBaseTailSquarePayment
  rw [hcard]
  norm_num
  change
    (∑ pivot ∈ pivots,
      hallBaseTailSquareCount N B 23 pivot) / 2 / N ≤ _
  calc
    (∑ pivot ∈ pivots,
        hallBaseTailSquareCount N B 23 pivot) / 2 / N =
        (∑ pivot ∈ pivots,
          hallBaseTailSquareCount N B 23 pivot / N) / 2 := by
      rw [← Finset.sum_div]
      ring
    _ ≤ (4 * (2 * fiveMillionSquareTail23Envelope / 25 +
        fiveMillionR263EvenOneRoot23Envelope / 3)) / 2 := by
      exact div_le_div_of_nonneg_right hsum (by norm_num)
    _ = 4 * fiveMillionSquareTail23Envelope / 25 +
        2 * fiveMillionR263EvenOneRoot23Envelope / 3 := by ring

theorem hallBaseTailSquarePayment_threeTwo_r263_evenOne23_ratio_le
    {N : Nat} {B pivots : Finset Nat}
    (hLower : 5_000_000 ≤ N)
    (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hpivots : pivots ⊆ fiveMillionValuationPart N B .evenOne)
    (hcard : pivots.card = 3) :
    hallBaseTailSquarePayment N B pivots 23 2 / N ≤
      3 * fiveMillionSquareTail23Envelope / 25 +
        fiveMillionR263EvenOneRoot23Envelope / 2 := by
  have hper : ∀ pivot ∈ pivots,
      hallBaseTailSquareCount N B 23 pivot / N ≤
        2 * fiveMillionSquareTail23Envelope / 25 +
          fiveMillionR263EvenOneRoot23Envelope / 3 := by
    intro pivot hpivot
    have hpivotPart := hpivots hpivot
    exact hallBaseTailSquareCount_ratio_le_r263_evenOne23
      hLower hUpper hBout
      (fiveMillionValuationPart_subset_residual N B .evenOne hpivotPart)
      (fiveMillionValuationPart_evenOne hpivotPart)
  have hsum :
      (∑ pivot ∈ pivots,
        hallBaseTailSquareCount N B 23 pivot / N) ≤
      3 * (2 * fiveMillionSquareTail23Envelope / 25 +
        fiveMillionR263EvenOneRoot23Envelope / 3) := by
    have h := Finset.sum_le_sum fun pivot hpivot => hper pivot hpivot
    simpa [hcard, mul_add] using h
  unfold hallBaseTailSquarePayment
  rw [hcard]
  norm_num
  change
    (∑ pivot ∈ pivots,
      hallBaseTailSquareCount N B 23 pivot) / 2 / N ≤ _
  calc
    (∑ pivot ∈ pivots,
        hallBaseTailSquareCount N B 23 pivot) / 2 / N =
        (∑ pivot ∈ pivots,
          hallBaseTailSquareCount N B 23 pivot / N) / 2 := by
      rw [← Finset.sum_div]
      ring
    _ ≤ (3 * (2 * fiveMillionSquareTail23Envelope / 25 +
        fiveMillionR263EvenOneRoot23Envelope / 3)) / 2 := by
      exact div_le_div_of_nonneg_right hsum (by norm_num)
    _ = 3 * fiveMillionSquareTail23Envelope / 25 +
        fiveMillionR263EvenOneRoot23Envelope / 2 := by ring

#print axioms hallBaseTailSquareCount_ratio_le_r263_evenOne23
#print axioms hallBaseTailSquarePayment_fourThree_r263_evenOne23_ratio_le
#print axioms hallBaseTailSquarePayment_threeTwo_r263_evenOne23_ratio_le

end Erdos848
