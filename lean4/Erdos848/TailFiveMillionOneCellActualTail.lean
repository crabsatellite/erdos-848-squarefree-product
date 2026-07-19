import Erdos848.TailGlobalMixedActualTail

namespace Erdos848

/-! The two tail factors needed only by the one-active-cell split. -/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem hallBaseTailSquarePayment_eightThree_ratio_le_actual
    {N : Nat} {B pivots : Finset Nat}
    (hLower : 5_000_000 ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotsCard : pivots.card = 8)
    (hpivotsResidual : pivots ⊆ hallResidual N B)
    (hpivotsOdd : ∀ pivot ∈ pivots, Odd pivot) :
    hallBaseTailSquarePayment N B pivots 7 3 / N ≤
      (4 / 9 : Rat) * fiveMillionOddRoot7Envelope +
        (4 / 9 : Rat) * 6 * fiveMillionSquareTail7Envelope / 25 := by
  have hsum :
      (∑ pivot ∈ pivots,
        hallBaseTailSquareCount N B 7 pivot / N) ≤
      8 * ((fiveMillionOddRoot7Envelope +
        6 * fiveMillionSquareTail7Envelope / 25) / 3) := by
    have h := Finset.sum_le_sum fun pivot hpivot =>
      hallBaseTailSquareCount_ratio_le_globalMixed_actual
        hLower hBout (hpivotsResidual hpivot) (hpivotsOdd pivot hpivot)
    simpa [hpivotsCard] using h
  unfold hallBaseTailSquarePayment
  rw [hpivotsCard]
  rw [show (((8 : Nat) : Rat) - ((3 : Nat) : Rat) + 1) = 6 by norm_num]
  change
    (∑ pivot ∈ pivots, hallBaseTailSquareCount N B 7 pivot) / 6 / N ≤ _
  calc
    (∑ pivot ∈ pivots, hallBaseTailSquareCount N B 7 pivot) / 6 / N =
        (∑ pivot ∈ pivots,
          hallBaseTailSquareCount N B 7 pivot / N) / 6 := by
      rw [← Finset.sum_div]
      ring
    _ ≤ (8 * ((fiveMillionOddRoot7Envelope +
        6 * fiveMillionSquareTail7Envelope / 25) / 3)) / 6 := by
      exact div_le_div_of_nonneg_right hsum (by norm_num)
    _ = (4 / 9 : Rat) * fiveMillionOddRoot7Envelope +
        (4 / 9 : Rat) * 6 * fiveMillionSquareTail7Envelope / 25 := by
      ring

theorem hallBaseTailSquarePayment_sixTwo_ratio_le_actual
    {N : Nat} {B pivots : Finset Nat}
    (hLower : 5_000_000 ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotsCard : pivots.card = 6)
    (hpivotsResidual : pivots ⊆ hallResidual N B)
    (hpivotsOdd : ∀ pivot ∈ pivots, Odd pivot) :
    hallBaseTailSquarePayment N B pivots 7 2 / N ≤
      (2 / 5 : Rat) * fiveMillionOddRoot7Envelope +
        (2 / 5 : Rat) * 6 * fiveMillionSquareTail7Envelope / 25 := by
  have hsum :
      (∑ pivot ∈ pivots,
        hallBaseTailSquareCount N B 7 pivot / N) ≤
      6 * ((fiveMillionOddRoot7Envelope +
        6 * fiveMillionSquareTail7Envelope / 25) / 3) := by
    have h := Finset.sum_le_sum fun pivot hpivot =>
      hallBaseTailSquareCount_ratio_le_globalMixed_actual
        hLower hBout (hpivotsResidual hpivot) (hpivotsOdd pivot hpivot)
    simpa [hpivotsCard] using h
  unfold hallBaseTailSquarePayment
  rw [hpivotsCard]
  rw [show (((6 : Nat) : Rat) - ((2 : Nat) : Rat) + 1) = 5 by norm_num]
  change
    (∑ pivot ∈ pivots, hallBaseTailSquareCount N B 7 pivot) / 5 / N ≤ _
  calc
    (∑ pivot ∈ pivots, hallBaseTailSquareCount N B 7 pivot) / 5 / N =
        (∑ pivot ∈ pivots,
          hallBaseTailSquareCount N B 7 pivot / N) / 5 := by
      rw [← Finset.sum_div]
      ring
    _ ≤ (6 * ((fiveMillionOddRoot7Envelope +
        6 * fiveMillionSquareTail7Envelope / 25) / 3)) / 5 := by
      exact div_le_div_of_nonneg_right hsum (by norm_num)
    _ = (2 / 5 : Rat) * fiveMillionOddRoot7Envelope +
        (2 / 5 : Rat) * 6 * fiveMillionSquareTail7Envelope / 25 := by
      ring

#print axioms hallBaseTailSquarePayment_eightThree_ratio_le_actual
#print axioms hallBaseTailSquarePayment_sixTwo_ratio_le_actual

end Erdos848
