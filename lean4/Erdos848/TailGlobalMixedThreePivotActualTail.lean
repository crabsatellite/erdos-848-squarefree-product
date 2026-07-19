import Erdos848.TailGlobalMixedEvenActualTail
import Erdos848.TailGlobalMixedThreePivot

namespace Erdos848

/-!
# Actual three-pivot Hall-tail payment

This is the multiplicity-weighted tail alternative on the literal Hall base
part.  It uses the already kernel-checked one-form bounds and therefore holds
for every `N >= 5_000_000`; no ambient-`N` interval is enumerated here.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

private theorem hallBaseTailSquarePayment_threeTwo_ratio_le_of_perPivot
    {N : Nat} {B pivots : Finset Nat} {envelope : Rat}
    (hcard : pivots.card = 3)
    (hper : ∀ pivot ∈ pivots,
      hallBaseTailSquareCount N B 7 pivot / N <= envelope) :
    hallBaseTailSquarePayment N B pivots 7 2 / N <=
      (3 / 2 : Rat) * envelope := by
  have hsum :
      (∑ pivot ∈ pivots,
        hallBaseTailSquareCount N B 7 pivot / N) <=
      3 * envelope := by
    have h := Finset.sum_le_sum fun pivot hpivot => hper pivot hpivot
    simpa [hcard] using h
  unfold hallBaseTailSquarePayment
  rw [hcard]
  rw [show (((3 : Nat) : Rat) - ((2 : Nat) : Rat) + 1) = 2 by norm_num]
  change
    (∑ pivot ∈ pivots, hallBaseTailSquareCount N B 7 pivot) / 2 / N <= _
  calc
    (∑ pivot ∈ pivots, hallBaseTailSquareCount N B 7 pivot) / 2 / N =
        (∑ pivot ∈ pivots,
          hallBaseTailSquareCount N B 7 pivot / N) / 2 := by
      rw [← Finset.sum_div]
      ring
    _ <= (3 * envelope) / 2 :=
      div_le_div_of_nonneg_right hsum (by norm_num)
    _ = (3 / 2 : Rat) * envelope := by ring

private theorem hallBaseTailSquarePayment_threeTwo_normal_ratio_le
    {N : Nat} {B pivots : Finset Nat}
    (hcard : pivots.card = 3)
    (hper : ∀ pivot ∈ pivots,
      hallBaseTailSquareCount N B 7 pivot / N <=
        (fiveMillionOddRoot7Envelope +
          6 * fiveMillionSquareTail7Envelope / 25) / 3) :
    hallBaseTailSquarePayment N B pivots 7 2 / N <=
      (fiveMillionOddRoot7Envelope +
        6 * fiveMillionSquareTail7Envelope / 25) / 2 := by
  calc
    hallBaseTailSquarePayment N B pivots 7 2 / N <=
        (3 / 2 : Rat) *
          ((fiveMillionOddRoot7Envelope +
            6 * fiveMillionSquareTail7Envelope / 25) / 3) :=
      hallBaseTailSquarePayment_threeTwo_ratio_le_of_perPivot hcard hper
    _ = (fiveMillionOddRoot7Envelope +
        6 * fiveMillionSquareTail7Envelope / 25) / 2 := by ring

def globalMixedThreePivotActualTailEnvelope
    (valuation : FiveMillionValuationClass) : Rat :=
  match valuation with
  | .evenThree =>
      (3 / 5 : Rat) * fiveMillionOddRoot7Envelope +
        3 * fiveMillionSquareTail7Envelope / 25
  | _ =>
      (fiveMillionOddRoot7Envelope +
        6 * fiveMillionSquareTail7Envelope / 25) / 2

theorem hallBaseTailSquarePayment_threeTwo_actual_ratio_le
    {N : Nat} {B pivots : Finset Nat}
    {valuation : FiveMillionValuationClass}
    (hLower : 5_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hpivots : pivots ⊆ fiveMillionValuationPart N B valuation)
    (hcard : pivots.card = 3) :
    hallBaseTailSquarePayment N B pivots 7 2 / N <=
      globalMixedThreePivotActualTailEnvelope valuation := by
  cases valuation with
  | evenOne =>
      simp only [globalMixedThreePivotActualTailEnvelope]
      apply hallBaseTailSquarePayment_threeTwo_normal_ratio_le hcard
      · intro pivot hpivot
        have hpivotPart := hpivots hpivot
        exact hallBaseTailSquareCount_ratio_le_globalMixed_evenOne
          hLower hBout
          (fiveMillionValuationPart_subset_residual N B .evenOne hpivotPart)
          (fiveMillionValuationPart_evenOne hpivotPart)
  | evenTwo =>
      simp only [globalMixedThreePivotActualTailEnvelope]
      apply hallBaseTailSquarePayment_threeTwo_normal_ratio_le hcard
      · intro pivot hpivot
        have hpivotPart := hpivots hpivot
        exact hallBaseTailSquareCount_ratio_le_globalMixed_evenTwo
          hLower hBout
          (fiveMillionValuationPart_subset_residual N B .evenTwo hpivotPart)
          (fiveMillionValuationPart_evenTwo hpivotPart)
  | evenThree =>
      simpa only [globalMixedThreePivotActualTailEnvelope] using
        hallBaseTailSquarePayment_threeTwo_evenThree_ratio_le
          (globalMixedEvenThreeBaseTailCertificate_actual
            hLower hBout hcard
            (fun _pivot hpivot =>
              fiveMillionValuationPart_subset_residual N B .evenThree
                (hpivots hpivot))
            (fun _pivot hpivot =>
              fiveMillionValuationPart_evenThree (hpivots hpivot)))
  | oddOne =>
      simp only [globalMixedThreePivotActualTailEnvelope]
      apply hallBaseTailSquarePayment_threeTwo_normal_ratio_le hcard
      · intro pivot hpivot
        have hpivotPart := hpivots hpivot
        exact hallBaseTailSquareCount_ratio_le_globalMixed_actual
          hLower hBout
          (fiveMillionValuationPart_subset_residual N B .oddOne hpivotPart)
          (fiveMillionValuationPart_odd (Or.inl rfl) hpivotPart)
  | oddThree =>
      simp only [globalMixedThreePivotActualTailEnvelope]
      apply hallBaseTailSquarePayment_threeTwo_normal_ratio_le hcard
      · intro pivot hpivot
        have hpivotPart := hpivots hpivot
        exact hallBaseTailSquareCount_ratio_le_globalMixed_actual
          hLower hBout
          (fiveMillionValuationPart_subset_residual N B .oddThree hpivotPart)
          (fiveMillionValuationPart_odd (Or.inr rfl) hpivotPart)

#print axioms hallBaseTailSquarePayment_threeTwo_actual_ratio_le

end Erdos848
