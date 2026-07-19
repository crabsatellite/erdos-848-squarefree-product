import Erdos848.TailGlobalMixedActualTail

namespace Erdos848

/-! # Literal tail aggregation for eight pivots at threshold four -/

structure FiveMillionEightBaseTailCertificate
    (N : Nat) (B pivots : Finset Nat) : Prop where
  pivotsCard : pivots.card = 8
  perPivot : ∀ pivot ∈ pivots,
    hallBaseTailSquareCount N B 7 pivot / N <=
      (fiveMillionOddRoot7Envelope +
        6 * fiveMillionSquareTail7Envelope / 25) / 3

theorem hallBaseTailSquarePayment_eightFour_ratio_le
    {N : Nat} {B pivots : Finset Nat}
    (certificate : FiveMillionEightBaseTailCertificate N B pivots) :
    hallBaseTailSquarePayment N B pivots 7 4 / N <=
      (8 / 15 : Rat) * fiveMillionOddRoot7Envelope +
        (8 / 15 : Rat) * 6 * fiveMillionSquareTail7Envelope / 25 := by
  have hsum :
      (∑ pivot ∈ pivots,
        hallBaseTailSquareCount N B 7 pivot / N) <=
      8 * ((fiveMillionOddRoot7Envelope +
        6 * fiveMillionSquareTail7Envelope / 25) / 3) := by
    have h := Finset.sum_le_sum fun pivot hpivot =>
      certificate.perPivot pivot hpivot
    simpa [certificate.pivotsCard] using h
  unfold hallBaseTailSquarePayment
  rw [certificate.pivotsCard]
  rw [show (((8 : Nat) : Rat) - ((4 : Nat) : Rat) + 1) = 5 by norm_num]
  change
    (∑ pivot ∈ pivots, hallBaseTailSquareCount N B 7 pivot) / 5 / N <= _
  calc
    (∑ pivot ∈ pivots, hallBaseTailSquareCount N B 7 pivot) / 5 / N =
        (∑ pivot ∈ pivots,
          hallBaseTailSquareCount N B 7 pivot / N) / 5 := by
      rw [← Finset.sum_div]
      ring
    _ <= (8 * ((fiveMillionOddRoot7Envelope +
        6 * fiveMillionSquareTail7Envelope / 25) / 3)) / 5 := by
      exact div_le_div_of_nonneg_right hsum (by norm_num)
    _ = (8 / 15 : Rat) * fiveMillionOddRoot7Envelope +
        (8 / 15 : Rat) * 6 * fiveMillionSquareTail7Envelope / 25 := by
      ring

def globalMixedEightBaseTailCertificate_actual
    {N : Nat} {B pivots : Finset Nat}
    (hLower : 5_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotsCard : pivots.card = 8)
    (hpivotsResidual : pivots ⊆ hallResidual N B)
    (hpivotsOdd : ∀ pivot ∈ pivots, Odd pivot) :
    FiveMillionEightBaseTailCertificate N B pivots where
  pivotsCard := hpivotsCard
  perPivot := by
    intro pivot hpivot
    exact hallBaseTailSquareCount_ratio_le_globalMixed_actual
      hLower hBout (hpivotsResidual hpivot) (hpivotsOdd pivot hpivot)

#print axioms hallBaseTailSquarePayment_eightFour_ratio_le
#print axioms globalMixedEightBaseTailCertificate_actual

end Erdos848
