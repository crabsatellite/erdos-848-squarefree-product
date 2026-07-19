import Erdos848.TailGlobalMixedDegree
import Erdos848.TailPureGlobalDegree
import Erdos848.TailGlobalMixedValuationTailSelection

namespace Erdos848

/-!
# Strict Hall defect produces a large actual residual

The pure opposite-base matching first forces a genuinely mixed pivot.  The
two uniform degree bounds then feed the exact degree-subtraction identity.
No density producer or interval scan is assumed.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

lemma hallMixedResidual_subset_hallResidual
    {N : Nat} {B : Finset Nat}
    (hBout : Erdos848OutsideSet N B) :
    hallMixedResidual N B ⊆ hallResidual N B := by
  intro pivot hpivot
  have hsubset := hallMixedResidual_subset_completionResidual hBout hpivot
  simpa [hallResidual, lowBaseSet] using hsubset

/-- Quantitative all-`N` residual producer. -/
theorem globalMixedHallResidual_cast_lower_of_defect
    {N : Nat} {B : Finset Nat}
    (hLower : 5_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hdefect : (OriginalA7 N).card <
      B.card + (hallNonNeighbours N B).card) :
    (2 : Rat) * N / 525 - 1 < (hallResidual N B).card := by
  have hmixedNonempty := hallMixedResidual_nonempty_of_defect
    (pureGlobalOppositeBaseMatching hLower) hdefect
  obtain ⟨pivot, hpivotMixed⟩ := hmixedNonempty
  have hpivotResidual : pivot ∈ hallResidual N B :=
    hallMixedResidual_subset_hallResidual hBout hpivotMixed
  have hdegree7 := globalMixedA7_degree_lower
    hLower hBout hpivotResidual
  have hdegree18 := globalMixedA18_degree_lower
    hLower hBout hpivotResidual
  have hdegree7' : (N : Rat) / 50 + (1 / 525 : Rat) * N <
      ((squarefreeNeighbours (OriginalA7 N) pivot).card : Rat) := by
    convert hdegree7 using 1 <;> ring
  have hdegree18' : (N : Rat) / 50 + (1 / 525 : Rat) * N <
      ((squarefreeNeighbours (OriginalA18 N) pivot).card : Rat) := by
    convert hdegree18 using 1 <;> ring
  have hmixed := mixedHallDefect_residual_cast_lower
    (delta := (1 : Rat) / 525) hBprop hpivotMixed hdefect
      hdegree7' hdegree18'
  have hcard := Finset.card_le_card
    (hallMixedResidual_subset_hallResidual hBout)
  have hcardQ : ((hallMixedResidual N B).card : Rat) <=
      ((hallResidual N B).card : Rat) := by
    exact_mod_cast hcard
  have hmixed' : (2 : Rat) * N / 525 - 1 <
      ((hallMixedResidual N B).card : Rat) := by
    convert hmixed using 1 <;> ring
  exact hmixed'.trans_le hcardQ

theorem globalMixedHallResidual_card_gt_twentyFive_of_defect
    {N : Nat} {B : Finset Nat}
    (hLower : 5_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hdefect : (OriginalA7 N).card <
      B.card + (hallNonNeighbours N B).card) :
    25 < (hallResidual N B).card := by
  have hresidual := globalMixedHallResidual_cast_lower_of_defect
    hLower hBout hBprop hdefect
  have hLowerQ : (5_000_000 : Rat) <= N := by exact_mod_cast hLower
  have hlargeQ : (25 : Rat) < ((hallResidual N B).card : Rat) := by
    have hendpoint : (19046 : Rat) <= (2 : Rat) * N / 525 - 1 := by
      linarith
    exact lt_trans (by norm_num : (25 : Rat) < 19046)
      (lt_of_le_of_lt hendpoint hresidual)
  exact_mod_cast hlargeQ

/-- The strengthened periodic finite-prime count exposes the residual scale
needed by the terminal allocation argument already at the endpoint. -/
theorem globalMixedHallResidual_card_gt_9999_of_defect
    {N : Nat} {B : Finset Nat}
    (hLower : 5_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hdefect : (OriginalA7 N).card <
      B.card + (hallNonNeighbours N B).card) :
    9999 < (hallResidual N B).card := by
  have hresidual := globalMixedHallResidual_cast_lower_of_defect
    hLower hBout hBprop hdefect
  have hLowerQ : (5_000_000 : Rat) <= N := by exact_mod_cast hLower
  have hlargeQ : (9999 : Rat) < ((hallResidual N B).card : Rat) := by
    have hendpoint : (9999 : Rat) <= (2 : Rat) * N / 525 - 1 := by
      linarith
    exact hendpoint.trans_lt hresidual
  exact_mod_cast hlargeQ

theorem globalMixedHallResidual_card_gt_19046_of_defect
    {N : Nat} {B : Finset Nat}
    (hLower : 5_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hdefect : (OriginalA7 N).card <
      B.card + (hallNonNeighbours N B).card) :
    19046 < (hallResidual N B).card := by
  have hresidual := globalMixedHallResidual_cast_lower_of_defect
    hLower hBout hBprop hdefect
  have hLowerQ : (5_000_000 : Rat) <= N := by exact_mod_cast hLower
  have hlargeQ : (19046 : Rat) < ((hallResidual N B).card : Rat) := by
    have hendpoint : (19046 : Rat) <= (2 : Rat) * N / 525 - 1 := by
      linarith
    exact hendpoint.trans_lt hresidual
  exact_mod_cast hlargeQ

/-- One literal valuation part therefore contains at least `3810` actual
residual pivots.  This is the quantitative input for the terminal allocation,
not merely the six-pivot tail selector. -/
theorem exists_large_fiveMillionValuationPart_of_defect
    {N : Nat} {B : Finset Nat}
    (hLower : 5_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hdefect : (OriginalA7 N).card <
      B.card + (hallNonNeighbours N B).card) :
    ∃ cls : FiveMillionValuationClass,
      3809 < (fiveMillionValuationPart N B cls).card := by
  apply exists_fiveMillionValuationPart_card_gt
  have hlarge := globalMixedHallResidual_card_gt_19046_of_defect
    hLower hBout hBprop hdefect
  omega

/-- The degree producer and five-way valuation selector now compose directly
under the strict defect hypothesis. -/
theorem exists_valuationTailWitness_of_defect
    {N : Nat} {B : Finset Nat}
    (hLower : 5_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hdefect : (OriginalA7 N).card <
      B.card + (hallNonNeighbours N B).card) :
    FiveMillionValuationTailWitness N B :=
  exists_valuationTailWitness_of_residual_card_gt_twentyFive
    hLower hBout
      (globalMixedHallResidual_card_gt_twentyFive_of_defect
        hLower hBout hBprop hdefect)

#print axioms globalMixedHallResidual_cast_lower_of_defect
#print axioms globalMixedHallResidual_card_gt_twentyFive_of_defect
#print axioms globalMixedHallResidual_card_gt_9999_of_defect
#print axioms globalMixedHallResidual_card_gt_19046_of_defect
#print axioms exists_large_fiveMillionValuationPart_of_defect
#print axioms exists_valuationTailWitness_of_defect

end Erdos848
