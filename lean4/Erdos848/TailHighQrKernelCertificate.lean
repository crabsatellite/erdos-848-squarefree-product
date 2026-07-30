import Erdos848.TailHighQrActualTail
import Erdos848.TailHighUnboundedKernelCertificate

namespace Erdos848

/-!
# Ten-branch consumer for QR-screened class roots

The four QR root rows are selected by the structural valuation branch.  All
Hall multiplicity and finite payments are inherited from the shared
ten-branch consumer.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

structure CertifiedHighQrClassRoots where
  evenOne : CertifiedHighQrRootEnvelopeRow
  evenTwo : CertifiedHighQrRootEnvelopeRow
  evenThree : CertifiedHighQrRootEnvelopeRow
  odd : CertifiedHighQrRootEnvelopeRow
  evenOneClass :
    evenOne.row.rootClass = .evenOne
  evenTwoClass :
    evenTwo.row.rootClass = .evenTwo
  evenThreeClass :
    evenThree.row.rootClass = .evenThree
  oddClass :
    odd.row.rootClass = .odd

def CertifiedHighQrClassRoots.row
    (roots : CertifiedHighQrClassRoots) :
    HighVariableRootClass →
      CertifiedHighQrRootEnvelopeRow
  | .evenOne => roots.evenOne
  | .evenTwo => roots.evenTwo
  | .evenThree => roots.evenThree
  | .odd => roots.odd

theorem highQrKernelTerminalCertificate_of_branch
    (roots : CertifiedHighQrClassRoots)
    (budget : HighTenBranchBudget)
    {N : Nat} {B : Finset Nat}
    {branch : TwentyMillionBranch}
    (hTwenty : 20_000_000 ≤ N)
    (hLower :
      ∀ rootClass : HighVariableRootClass,
        (roots.row rootClass).row.lower ≤ N)
    (hUpper :
      ∀ rootClass : HighVariableRootClass,
        N ≤ (roots.row rootClass).row.upper)
    (hEvenOneEnvelope :
      budget.evenOneRootEnvelope =
        roots.evenOne.row.rootEnvelope)
    (hEvenTwoEnvelope :
      budget.evenTwoRootEnvelope =
        roots.evenTwo.row.rootEnvelope)
    (hEvenThreeEnvelope :
      budget.rootEnvelope =
        roots.evenThree.row.rootEnvelope)
    (hOddEnvelope :
      budget.oddRootEnvelope =
        roots.odd.row.rootEnvelope)
    (hBout : Erdos848OutsideSet N B)
    (hbranch : TwentyMillionBranchApplies N B branch) :
    HighKernelTerminalCertificate budget N B := by
  apply highKernelTerminalCertificate_of_tail_bounds
    budget hTwenty hBout hbranch
  · intro pivots hpivotsPart hpivotsCard
    rw [hEvenOneEnvelope]
    apply
      hallBaseTailSquarePayment_threeTwo_qrClass_even23_ratio_le
        roots.evenOne
        (hLower .evenOne) (hUpper .evenOne) hBout
    · intro pivot hpivot
      refine ⟨.evenOne, hpivotsPart hpivot, ?_⟩
      simpa [roots.evenOneClass,
        HighVariableRootClass.Accepts]
    · exact hpivotsCard
  · intro pivots hpivotsPart hpivotsCard
    rw [hEvenTwoEnvelope]
    apply
      hallBaseTailSquarePayment_threeTwo_qrClass_even23_ratio_le
        roots.evenTwo
        (hLower .evenTwo) (hUpper .evenTwo) hBout
    · intro pivot hpivot
      refine ⟨.evenTwo, hpivotsPart hpivot, ?_⟩
      simpa [roots.evenTwoClass,
        HighVariableRootClass.Accepts]
    · exact hpivotsCard
  · intro pivots hpivotsPart hpivotsCard
    rw [hEvenThreeEnvelope]
    apply
      hallBaseTailSquarePayment_threeTwo_qrClass_even23_ratio_le
        roots.evenThree
        (hLower .evenThree) (hUpper .evenThree) hBout
    · intro pivot hpivot
      refine ⟨.evenThree, hpivotsPart hpivot, ?_⟩
      simpa [roots.evenThreeClass,
        HighVariableRootClass.Accepts]
    · exact hpivotsCard
  · intro pivots hpivotsClass hpivotsCard
    rw [hOddEnvelope]
    apply
      hallBaseTailSquarePayment_threeTwo_qrClass_odd19_ratio_le
        roots.odd
        (hLower .odd) (hUpper .odd) hBout
    · intro pivot hpivot
      obtain ⟨valuation, hOdd, hpivotPart⟩ :=
        hpivotsClass pivot hpivot
      refine ⟨valuation, hpivotPart, ?_⟩
      rcases hOdd with rfl | rfl <;>
        simpa [roots.oddClass,
          HighVariableRootClass.Accepts]
    · exact hpivotsCard

#print axioms highQrKernelTerminalCertificate_of_branch

end Erdos848
