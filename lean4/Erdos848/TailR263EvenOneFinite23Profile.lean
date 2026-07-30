import Erdos848.TailR263EvenOneFinite23Payment
import Erdos848.TailR263EvenOneFinite23ProfileCore

namespace Erdos848

/-!
# Structural profiles for the literal E1 cutoff-23 payment

The first three cutoff coordinates are the actual mod-9, mod-49, and
mod-121 pivot coordinates.  This file packages the four cell/fibre profiles
used by the unchanged Hall cut and connects their common/non-common residue
hypotheses to the exact generated arithmetic certificate.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

private theorem e1FiniteCellTypeOf_eq_profile
    (roots : E1FinitePivotRootFamily)
    (threeConstraint : E1FinitePatternConstraint)
    (cellType : E1FiniteCellType)
    (hcommon : ∀ index,
      e1FiniteConstraintForProfile threeConstraint cellType index = .common →
        e1FiniteRootPatternAt roots index = .allEqual)
    (hnoncommon : ∀ index,
      e1FiniteConstraintForProfile threeConstraint cellType index =
          .noncommon →
        e1FiniteRootPatternAt roots index ≠ .allEqual) :
    e1FiniteCellTypeOf
      (e1FiniteRootPatternAt roots 1)
      (e1FiniteRootPatternAt roots 2) = cellType := by
  cases cellType with
  | good =>
      have hseven := hnoncommon 1 (by
        simp [e1FiniteConstraintForProfile, e1FiniteSevenConstraint])
      have heleven := hnoncommon 2 (by
        simp [e1FiniteConstraintForProfile, e1FiniteElevenConstraint])
      simp [e1FiniteCellTypeOf, hseven, heleven]
  | seven =>
      have hseven := hcommon 1 (by
        simp [e1FiniteConstraintForProfile, e1FiniteSevenConstraint])
      have heleven := hnoncommon 2 (by
        simp [e1FiniteConstraintForProfile, e1FiniteElevenConstraint])
      simp [e1FiniteCellTypeOf, hseven, heleven]
  | eleven =>
      have hseven := hnoncommon 1 (by
        simp [e1FiniteConstraintForProfile, e1FiniteSevenConstraint])
      have heleven := hcommon 2 (by
        simp [e1FiniteConstraintForProfile, e1FiniteElevenConstraint])
      simp [e1FiniteCellTypeOf, hseven, heleven]
  | both =>
      have hseven := hcommon 1 (by
        simp [e1FiniteConstraintForProfile, e1FiniteSevenConstraint])
      have heleven := hcommon 2 (by
        simp [e1FiniteConstraintForProfile, e1FiniteElevenConstraint])
      simp [e1FiniteCellTypeOf, hseven, heleven]

theorem e1FiniteActualAllThreeResidue_ratio_le_of_profile
    {N : Nat} {B pivots : Finset Nat}
    {valuation : FiveMillionValuationClass}
    (hLower : 5_000_000 ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (hvaluation : IsGlobalMixedEvenValuationClass valuation)
    (hpivots : pivots ⊆ fiveMillionValuationPart N B valuation)
    (hcard : pivots.card = 3)
    (baseResidue : Nat) (cellType : E1FiniteCellType)
    (hcommonResidue : ∀ index,
      e1FiniteConstraintForProfile .noncommon cellType index = .common →
        ∃ residue : Fin (e1FiniteModulus index), ∀ i : Fin 3,
          globalMixedThreePivotAt pivots hcard i %
            e1FiniteModulus index = residue.val)
    (hnoncommonResidue : ∀ index,
      e1FiniteConstraintForProfile .noncommon cellType index = .noncommon →
        ¬ ∃ residue : Fin (e1FiniteModulus index), ∀ i : Fin 3,
          globalMixedThreePivotAt pivots hcard i %
            e1FiniteModulus index = residue.val) :
    ((e1FiniteActualAllThreeResidue
        N pivots baseResidue).card : Rat) / N ≤
      e1FiniteFourTargetRat cellType := by
  obtain ⟨roots, hextends, hcommon, hnoncommon⟩ :=
    e1FiniteActual_exists_constrained_root_cover
      (baseResidue := baseResidue) (pivots := pivots) (hcard := hcard)
      (e1FiniteConstraintForProfile .noncommon cellType)
      hcommonResidue hnoncommonResidue
  have hp3 : e1FiniteRootPatternAt roots 0 ≠ .allEqual :=
    hnoncommon 0 (by
      simp [e1FiniteConstraintForProfile])
  have htype := e1FiniteCellTypeOf_eq_profile roots
    .noncommon cellType hcommon hnoncommon
  have hbound := e1FiniteActualAllThreeResidue_ratio_le
    hLower hBout hvaluation hpivots hcard hextends hp3
  rw [htype] at hbound
  exact hbound

theorem e1FiniteActualMixedResidue_ratio_le_of_profile
    {N : Nat} {B pivots : Finset Nat}
    {valuation : FiveMillionValuationClass}
    (hLower : 5_000_000 ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (hvaluation : IsGlobalMixedEvenValuationClass valuation)
    (hpivots : pivots ⊆ fiveMillionValuationPart N B valuation)
    (hcard : pivots.card = 3)
    (baseResidue : Nat) (cellType : E1FiniteCellType)
    (hcommonResidue : ∀ index,
      e1FiniteConstraintForProfile .common cellType index = .common →
        ∃ residue : Fin (e1FiniteModulus index), ∀ i : Fin 3,
          globalMixedThreePivotAt pivots hcard i %
            e1FiniteModulus index = residue.val)
    (hnoncommonResidue : ∀ index,
      e1FiniteConstraintForProfile .common cellType index = .noncommon →
        ¬ ∃ residue : Fin (e1FiniteModulus index), ∀ i : Fin 3,
          globalMixedThreePivotAt pivots hcard i %
            e1FiniteModulus index = residue.val) :
    (((e1FiniteActualAllThreeResidue
          N pivots baseResidue).card : Rat) +
        (e1FiniteActualTwoOfThreeResidue
          N pivots baseResidue).card) / N ≤
      e1FiniteThreeTargetRat cellType := by
  obtain ⟨roots, hextends, hcommon, hnoncommon⟩ :=
    e1FiniteActual_exists_constrained_root_cover
      (baseResidue := baseResidue) (pivots := pivots) (hcard := hcard)
      (e1FiniteConstraintForProfile .common cellType)
      hcommonResidue hnoncommonResidue
  have hp3 : e1FiniteRootPatternAt roots 0 = .allEqual :=
    hcommon 0 (by
      simp [e1FiniteConstraintForProfile])
  have htype := e1FiniteCellTypeOf_eq_profile roots
    .common cellType hcommon hnoncommon
  have hbound := e1FiniteActualMixedResidue_ratio_le
    hLower hBout hvaluation hpivots hcard hextends hp3
  rw [htype] at hbound
  exact hbound

#print axioms e1FiniteActualAllThreeResidue_ratio_le_of_profile
#print axioms e1FiniteActualMixedResidue_ratio_le_of_profile

end Erdos848
