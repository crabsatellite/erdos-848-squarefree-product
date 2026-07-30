import Erdos848.TailR263EvenOneFinite23HallPayment
import Erdos848.TailR263EvenOneFinite23ClassifiedCore

namespace Erdos848

/-!
# Classification-free E1 finite payments

The structural allocation only needs to know which of the first three
coordinates are certainly non-common.  Equality in the remaining coordinates
is decided inside these lemmas, so no exploratory cell label is accepted as a
proof premise.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

attribute [local instance] Classical.propDecidable

private theorem e1FiniteTripleIntersection_profile_good
    {N : Nat} {B pivots : Finset Nat}
    (hLower : 5_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hpivots : pivots ⊆ fiveMillionValuationPart N B .evenOne)
    (hcard : pivots.card = 3)
    (hthree : ¬ e1FiniteTripleCommonAt pivots hcard 0)
    (hseven : ¬ e1FiniteTripleCommonAt pivots hcard 1)
    (heleven : ¬ e1FiniteTripleCommonAt pivots hcard 2) :
    ((eventIntersection (hallBasePart N B)
        (finiteSquarePrimeEvent 23) pivots).card : Rat) / N <=
      2 * e1FiniteFourTargetRat .good := by
  apply e1FiniteHallBaseTripleIntersection_ratio_le_of_profile
    hLower hBout (by simp [IsGlobalMixedEvenValuationClass])
      hpivots hcard .good
  · intro index hindex
    fin_cases index <;>
      simp [e1FiniteConstraintForProfile, e1FiniteSevenConstraint,
        e1FiniteElevenConstraint] at hindex
  · intro index hindex
    fin_cases index
    · exact hthree
    · exact hseven
    · exact heleven
    · simp [e1FiniteConstraintForProfile] at hindex
    · simp [e1FiniteConstraintForProfile] at hindex
    · simp [e1FiniteConstraintForProfile] at hindex
    · simp [e1FiniteConstraintForProfile] at hindex

private theorem e1FiniteTripleIntersection_profile_seven
    {N : Nat} {B pivots : Finset Nat}
    (hLower : 5_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hpivots : pivots ⊆ fiveMillionValuationPart N B .evenOne)
    (hcard : pivots.card = 3)
    (hthree : ¬ e1FiniteTripleCommonAt pivots hcard 0)
    (hseven : e1FiniteTripleCommonAt pivots hcard 1)
    (heleven : ¬ e1FiniteTripleCommonAt pivots hcard 2) :
    ((eventIntersection (hallBasePart N B)
        (finiteSquarePrimeEvent 23) pivots).card : Rat) / N <=
      2 * e1FiniteFourTargetRat .seven := by
  apply e1FiniteHallBaseTripleIntersection_ratio_le_of_profile
    hLower hBout (by simp [IsGlobalMixedEvenValuationClass])
      hpivots hcard .seven
  · intro index hindex
    fin_cases index
    · simp [e1FiniteConstraintForProfile] at hindex
    · exact hseven
    · simp [e1FiniteConstraintForProfile, e1FiniteElevenConstraint] at hindex
    · simp [e1FiniteConstraintForProfile] at hindex
    · simp [e1FiniteConstraintForProfile] at hindex
    · simp [e1FiniteConstraintForProfile] at hindex
    · simp [e1FiniteConstraintForProfile] at hindex
  · intro index hindex
    fin_cases index
    · exact hthree
    · simp [e1FiniteConstraintForProfile, e1FiniteSevenConstraint] at hindex
    · exact heleven
    · simp [e1FiniteConstraintForProfile] at hindex
    · simp [e1FiniteConstraintForProfile] at hindex
    · simp [e1FiniteConstraintForProfile] at hindex
    · simp [e1FiniteConstraintForProfile] at hindex

private theorem e1FiniteTripleIntersection_profile_eleven
    {N : Nat} {B pivots : Finset Nat}
    (hLower : 5_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hpivots : pivots ⊆ fiveMillionValuationPart N B .evenOne)
    (hcard : pivots.card = 3)
    (hthree : ¬ e1FiniteTripleCommonAt pivots hcard 0)
    (hseven : ¬ e1FiniteTripleCommonAt pivots hcard 1)
    (heleven : e1FiniteTripleCommonAt pivots hcard 2) :
    ((eventIntersection (hallBasePart N B)
        (finiteSquarePrimeEvent 23) pivots).card : Rat) / N <=
      2 * e1FiniteFourTargetRat .eleven := by
  apply e1FiniteHallBaseTripleIntersection_ratio_le_of_profile
    hLower hBout (by simp [IsGlobalMixedEvenValuationClass])
      hpivots hcard .eleven
  · intro index hindex
    fin_cases index
    · simp [e1FiniteConstraintForProfile] at hindex
    · simp [e1FiniteConstraintForProfile, e1FiniteSevenConstraint] at hindex
    · exact heleven
    · simp [e1FiniteConstraintForProfile] at hindex
    · simp [e1FiniteConstraintForProfile] at hindex
    · simp [e1FiniteConstraintForProfile] at hindex
    · simp [e1FiniteConstraintForProfile] at hindex
  · intro index hindex
    fin_cases index
    · exact hthree
    · exact hseven
    · simp [e1FiniteConstraintForProfile, e1FiniteElevenConstraint] at hindex
    · simp [e1FiniteConstraintForProfile] at hindex
    · simp [e1FiniteConstraintForProfile] at hindex
    · simp [e1FiniteConstraintForProfile] at hindex
    · simp [e1FiniteConstraintForProfile] at hindex

private theorem e1FiniteTripleIntersection_profile_both
    {N : Nat} {B pivots : Finset Nat}
    (hLower : 5_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hpivots : pivots ⊆ fiveMillionValuationPart N B .evenOne)
    (hcard : pivots.card = 3)
    (hthree : ¬ e1FiniteTripleCommonAt pivots hcard 0)
    (hseven : e1FiniteTripleCommonAt pivots hcard 1)
    (heleven : e1FiniteTripleCommonAt pivots hcard 2) :
    ((eventIntersection (hallBasePart N B)
        (finiteSquarePrimeEvent 23) pivots).card : Rat) / N <=
      2 * e1FiniteFourTargetRat .both := by
  apply e1FiniteHallBaseTripleIntersection_ratio_le_of_profile
    hLower hBout (by simp [IsGlobalMixedEvenValuationClass])
      hpivots hcard .both
  · intro index hindex
    fin_cases index
    · simp [e1FiniteConstraintForProfile] at hindex
    · exact hseven
    · exact heleven
    · simp [e1FiniteConstraintForProfile] at hindex
    · simp [e1FiniteConstraintForProfile] at hindex
    · simp [e1FiniteConstraintForProfile] at hindex
    · simp [e1FiniteConstraintForProfile] at hindex
  · intro index hindex
    fin_cases index
    · exact hthree
    · simp [e1FiniteConstraintForProfile, e1FiniteSevenConstraint] at hindex
    · simp [e1FiniteConstraintForProfile, e1FiniteElevenConstraint] at hindex
    · simp [e1FiniteConstraintForProfile] at hindex
    · simp [e1FiniteConstraintForProfile] at hindex
    · simp [e1FiniteConstraintForProfile] at hindex
    · simp [e1FiniteConstraintForProfile] at hindex

theorem e1FiniteHallBaseTripleIntersection_ratio_le_good
    {N : Nat} {B pivots : Finset Nat}
    (hLower : 5_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hpivots : pivots ⊆ fiveMillionValuationPart N B .evenOne)
    (hcard : pivots.card = 3)
    (hthree : ¬ e1FiniteTripleCommonAt pivots hcard 0)
    (hseven : ¬ e1FiniteTripleCommonAt pivots hcard 1)
    (heleven : ¬ e1FiniteTripleCommonAt pivots hcard 2) :
    ((eventIntersection (hallBasePart N B)
        (finiteSquarePrimeEvent 23) pivots).card : Rat) / N <=
      2 * e1FiniteFourTargetRat .good :=
  e1FiniteTripleIntersection_profile_good
    hLower hBout hpivots hcard hthree hseven heleven

theorem e1FiniteHallBaseTripleIntersection_ratio_le_worst
    {N : Nat} {B pivots : Finset Nat}
    (hLower : 5_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hpivots : pivots ⊆ fiveMillionValuationPart N B .evenOne)
    (hcard : pivots.card = 3)
    (hthree : ¬ e1FiniteTripleCommonAt pivots hcard 0) :
    ((eventIntersection (hallBasePart N B)
        (finiteSquarePrimeEvent 23) pivots).card : Rat) / N <=
      2 * e1FiniteFourTargetRat .both := by
  by_cases hseven : e1FiniteTripleCommonAt pivots hcard 1
  · by_cases heleven : e1FiniteTripleCommonAt pivots hcard 2
    · exact e1FiniteTripleIntersection_profile_both
        hLower hBout hpivots hcard hthree hseven heleven
    · have h := e1FiniteTripleIntersection_profile_seven
        hLower hBout hpivots hcard hthree hseven heleven
      exact h.trans (by
        norm_num [e1FiniteFourTargetRat, e1FiniteFourTargetMillion])
  · by_cases heleven : e1FiniteTripleCommonAt pivots hcard 2
    · have h := e1FiniteTripleIntersection_profile_eleven
        hLower hBout hpivots hcard hthree hseven heleven
      exact h.trans (by
        norm_num [e1FiniteFourTargetRat, e1FiniteFourTargetMillion])
    · have h := e1FiniteTripleIntersection_profile_good
        hLower hBout hpivots hcard hthree hseven heleven
      exact h.trans (by
        norm_num [e1FiniteFourTargetRat, e1FiniteFourTargetMillion])

theorem e1FiniteHallBaseMixedHalfPayment_ratio_le_profile
    {N : Nat} {B pivots : Finset Nat}
    (hLower : 5_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hpivots : pivots ⊆ fiveMillionValuationPart N B .evenOne)
    (hcard : pivots.card = 3)
    (cellType : E1FiniteCellType)
    (hthree : e1FiniteTripleCommonAt pivots hcard 0)
    (hseven : e1FiniteTripleCommonAt pivots hcard 1 ↔
      cellType = .seven ∨ cellType = .both)
    (heleven : e1FiniteTripleCommonAt pivots hcard 2 ↔
      cellType = .eleven ∨ cellType = .both) :
    fiveMillionR263BaseMixedHalfPayment N B pivots 23 / N <=
      e1FiniteThreeTargetRat cellType := by
  apply e1FiniteHallBaseMixedHalfPayment_ratio_le_of_profile
    hLower hBout (by simp [IsGlobalMixedEvenValuationClass])
      hpivots hcard cellType
  · intro index hindex
    fin_cases index
    · exact hthree
    · apply hseven.mpr
      cases cellType <;>
        simp [e1FiniteConstraintForProfile, e1FiniteSevenConstraint] at hindex ⊢
    · apply heleven.mpr
      cases cellType <;>
        simp [e1FiniteConstraintForProfile, e1FiniteElevenConstraint] at hindex ⊢
    · simp [e1FiniteConstraintForProfile] at hindex
    · simp [e1FiniteConstraintForProfile] at hindex
    · simp [e1FiniteConstraintForProfile] at hindex
    · simp [e1FiniteConstraintForProfile] at hindex
  · intro index hindex
    fin_cases index
    · simp [e1FiniteConstraintForProfile] at hindex
    · intro hcommon
      have htype := hseven.mp hcommon
      cases cellType <;>
        simp [e1FiniteConstraintForProfile, e1FiniteSevenConstraint] at hindex htype
    · intro hcommon
      have htype := heleven.mp hcommon
      cases cellType <;>
        simp [e1FiniteConstraintForProfile, e1FiniteElevenConstraint] at hindex htype
    · simp [e1FiniteConstraintForProfile] at hindex
    · simp [e1FiniteConstraintForProfile] at hindex
    · simp [e1FiniteConstraintForProfile] at hindex
    · simp [e1FiniteConstraintForProfile] at hindex

theorem e1FiniteHallBaseMixedHalfPayment_ratio_le_worst
    {N : Nat} {B pivots : Finset Nat}
    (hLower : 5_000_000 <= N)
    (hBout : Erdos848OutsideSet N B)
    (hpivots : pivots ⊆ fiveMillionValuationPart N B .evenOne)
    (hcard : pivots.card = 3)
    (hthree : e1FiniteTripleCommonAt pivots hcard 0) :
    fiveMillionR263BaseMixedHalfPayment N B pivots 23 / N <=
      e1FiniteThreeTargetRat .both := by
  by_cases hseven : e1FiniteTripleCommonAt pivots hcard 1
  · by_cases heleven : e1FiniteTripleCommonAt pivots hcard 2
    · exact e1FiniteHallBaseMixedHalfPayment_ratio_le_profile
        hLower hBout hpivots hcard .both hthree
        (by simp [hseven]) (by simp [heleven])
    · have h := e1FiniteHallBaseMixedHalfPayment_ratio_le_profile
        hLower hBout hpivots hcard .seven hthree
        (by simp [hseven]) (by simp [heleven])
      exact h.trans (by
        norm_num [e1FiniteThreeTargetRat, e1FiniteThreeTargetMillion])
  · by_cases heleven : e1FiniteTripleCommonAt pivots hcard 2
    · have h := e1FiniteHallBaseMixedHalfPayment_ratio_le_profile
        hLower hBout hpivots hcard .eleven hthree
        (by simp [hseven]) (by simp [heleven])
      exact h.trans (by
        norm_num [e1FiniteThreeTargetRat, e1FiniteThreeTargetMillion])
    · have h := e1FiniteHallBaseMixedHalfPayment_ratio_le_profile
        hLower hBout hpivots hcard .good hthree
        (by simp [hseven]) (by simp [heleven])
      exact h.trans (by
        norm_num [e1FiniteThreeTargetRat, e1FiniteThreeTargetMillion])

#print axioms e1FiniteHallBaseTripleIntersection_ratio_le_good
#print axioms e1FiniteHallBaseTripleIntersection_ratio_le_worst
#print axioms e1FiniteHallBaseMixedHalfPayment_ratio_le_profile
#print axioms e1FiniteHallBaseMixedHalfPayment_ratio_le_worst

end Erdos848
