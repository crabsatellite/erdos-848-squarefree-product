import Erdos848.TailR263EvenOneFinite23SharpHallPayment
import Erdos848.TailR263EvenOneFinite23ClassifiedCore

namespace Erdos848

/-! Classification-free sharp finite payments on the first block. -/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

attribute [local instance] Classical.propDecidable

private theorem e1FiniteSharpTripleIntersection_profile
    [E1Finite23SharpCertificate]
    {N : Nat} {B pivots : Finset Nat}
    (hLower : 5_000_000 ≤ N)
    (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hpivots : pivots ⊆ fiveMillionValuationPart N B .evenOne)
    (hcard : pivots.card = 3)
    (cellType : E1FiniteCellType)
    (hthree : ¬ e1FiniteTripleCommonAt pivots hcard 0)
    (hseven : e1FiniteTripleCommonAt pivots hcard 1 ↔
      cellType = .seven ∨ cellType = .both)
    (heleven : e1FiniteTripleCommonAt pivots hcard 2 ↔
      cellType = .eleven ∨ cellType = .both) :
    ((eventIntersection (hallBasePart N B)
        (finiteSquarePrimeEvent 23) pivots).card : Rat) / N ≤
      2 * e1FiniteSharpFourTargetRat cellType := by
  apply e1FiniteSharpHallBaseTripleIntersection_ratio_le_of_profile
    hLower hUpper hBout (by simp [IsGlobalMixedEvenValuationClass])
      hpivots hcard cellType
  · intro index hindex
    fin_cases index
    · simp [e1FiniteConstraintForProfile] at hindex
    · apply hseven.mpr
      cases cellType <;>
        simp [e1FiniteConstraintForProfile,
          e1FiniteSevenConstraint] at hindex ⊢
    · apply heleven.mpr
      cases cellType <;>
        simp [e1FiniteConstraintForProfile,
          e1FiniteElevenConstraint] at hindex ⊢
    · simp [e1FiniteConstraintForProfile] at hindex
    · simp [e1FiniteConstraintForProfile] at hindex
    · simp [e1FiniteConstraintForProfile] at hindex
    · simp [e1FiniteConstraintForProfile] at hindex
  · intro index hindex
    fin_cases index
    · exact hthree
    · intro hcommon
      have htype := hseven.mp hcommon
      cases cellType <;>
        simp [e1FiniteConstraintForProfile,
          e1FiniteSevenConstraint] at hindex htype
    · intro hcommon
      have htype := heleven.mp hcommon
      cases cellType <;>
        simp [e1FiniteConstraintForProfile,
          e1FiniteElevenConstraint] at hindex htype
    · simp [e1FiniteConstraintForProfile] at hindex
    · simp [e1FiniteConstraintForProfile] at hindex
    · simp [e1FiniteConstraintForProfile] at hindex
    · simp [e1FiniteConstraintForProfile] at hindex

theorem e1FiniteSharpHallBaseTripleIntersection_ratio_le_good
    [E1Finite23SharpCertificate]
    {N : Nat} {B pivots : Finset Nat}
    (hLower : 5_000_000 ≤ N)
    (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hpivots : pivots ⊆ fiveMillionValuationPart N B .evenOne)
    (hcard : pivots.card = 3)
    (hthree : ¬ e1FiniteTripleCommonAt pivots hcard 0)
    (hseven : ¬ e1FiniteTripleCommonAt pivots hcard 1)
    (heleven : ¬ e1FiniteTripleCommonAt pivots hcard 2) :
    ((eventIntersection (hallBasePart N B)
        (finiteSquarePrimeEvent 23) pivots).card : Rat) / N ≤
      2 * e1FiniteSharpFourTargetRat .good :=
  e1FiniteSharpTripleIntersection_profile
    hLower hUpper hBout hpivots hcard .good hthree
      (by simp [hseven]) (by simp [heleven])

theorem e1FiniteSharpHallBaseTripleIntersection_ratio_le_worst
    [E1Finite23SharpCertificate]
    {N : Nat} {B pivots : Finset Nat}
    (hLower : 5_000_000 ≤ N)
    (hUpper : N < 10_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hpivots : pivots ⊆ fiveMillionValuationPart N B .evenOne)
    (hcard : pivots.card = 3)
    (hthree : ¬ e1FiniteTripleCommonAt pivots hcard 0) :
    ((eventIntersection (hallBasePart N B)
        (finiteSquarePrimeEvent 23) pivots).card : Rat) / N ≤
      2 * e1FiniteSharpFourTargetRat .both := by
  by_cases hseven : e1FiniteTripleCommonAt pivots hcard 1
  · by_cases heleven : e1FiniteTripleCommonAt pivots hcard 2
    · exact e1FiniteSharpTripleIntersection_profile
        hLower hUpper hBout hpivots hcard .both hthree
          (by simp [hseven]) (by simp [heleven])
    · have h := e1FiniteSharpTripleIntersection_profile
        hLower hUpper hBout hpivots hcard .seven hthree
          (by simp [hseven]) (by simp [heleven])
      exact h.trans (by
        norm_num [e1FiniteSharpFourTargetRat,
          e1FiniteSharpFourTargetMillion])
  · by_cases heleven : e1FiniteTripleCommonAt pivots hcard 2
    · have h := e1FiniteSharpTripleIntersection_profile
        hLower hUpper hBout hpivots hcard .eleven hthree
          (by simp [hseven]) (by simp [heleven])
      exact h.trans (by
        norm_num [e1FiniteSharpFourTargetRat,
          e1FiniteSharpFourTargetMillion])
    · have h := e1FiniteSharpTripleIntersection_profile
        hLower hUpper hBout hpivots hcard .good hthree
          (by simp [hseven]) (by simp [heleven])
      exact h.trans (by
        norm_num [e1FiniteSharpFourTargetRat,
          e1FiniteSharpFourTargetMillion])

#print axioms e1FiniteSharpHallBaseTripleIntersection_ratio_le_good
#print axioms e1FiniteSharpHallBaseTripleIntersection_ratio_le_worst

end Erdos848
