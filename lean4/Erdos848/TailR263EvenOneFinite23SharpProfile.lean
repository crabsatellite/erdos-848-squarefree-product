import Erdos848.TailR263EvenOneFinite23SharpPayment
import Erdos848.TailR263EvenOneFinite23SharpRootCover
import Erdos848.TailR263EvenOneFinite23ProfileCore

namespace Erdos848

/-! Structural cell profiles for the feasible first-block certificate. -/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

private theorem e1FiniteSharpCellTypeOf_eq_profile
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

theorem e1FiniteSharpActualAllThreeResidue_ratio_le_of_profile
    [E1Finite23SharpCertificate]
    {N : Nat} {B pivots : Finset Nat}
    {valuation : FiveMillionValuationClass}
    (hLower : 5_000_000 ≤ N)
    (hUpper : N < 10_000_000)
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
      e1FiniteSharpFourTargetRat cellType := by
  obtain ⟨roots, hextends, hcommon, hnoncommon, hmodFaithful⟩ :=
    e1FiniteActual_exists_constrained_all_pairs_root_cover
      (baseResidue := baseResidue) (pivots := pivots) (hcard := hcard)
      (e1FiniteConstraintForProfile .noncommon cellType)
      hcommonResidue hnoncommonResidue
  have hp3 : e1FiniteRootPatternAt roots 0 ≠ .allEqual :=
    hnoncommon 0 (by
      simp [e1FiniteConstraintForProfile])
  have htype := e1FiniteSharpCellTypeOf_eq_profile roots
    .noncommon cellType hcommon hnoncommon
  have hbound := e1FiniteSharpActualAllThreeResidue_ratio_le
    hLower hUpper hBout hvaluation hpivots hcard hextends hp3 hmodFaithful
  rw [htype] at hbound
  exact hbound

#print axioms e1FiniteSharpActualAllThreeResidue_ratio_le_of_profile

end Erdos848
