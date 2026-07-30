import Erdos848.TailHybridKernelCloseCore
import Erdos848.TailHighUnboundedKernelCertificate

namespace Erdos848

/-!
# Hybrid terminal builder

The shared ten-branch theorem discharges all finite degree-19 payments.  The
hybrid providers supply only the normal/twist root and tail bounds.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem hybridKernelTerminalCertificate_of_branch
    (normalProvider : HybridPaperRootCertificateProvider)
    (twistProvider : HybridPaperTwistCertificateProvider)
    (rootProvider : HybridPaperRootEnvelopeCertificate)
    {regime : HybridPaperDiagonalRegime}
    {N : Nat} {B : Finset Nat} {branch : TwentyMillionBranch}
    (hcover : regime.Covers N)
    (hBout : Erdos848OutsideSet N B)
    (hbranch : TwentyMillionBranchApplies N B branch) :
    HybridKernelTerminalCertificate regime N B := by
  have hLowerNat : 20_000_000 ≤ N := by
    cases regime <;>
      simp [HybridPaperDiagonalRegime.Covers,
        HybridPaperDiagonalRegime.lower] at hcover <;>
      omega
  apply highKernelTerminalCertificate_of_tail_bounds
    (hybridTerminalBudget regime) hLowerNat hBout hbranch
  · intro pivots hpivotsPart hpivotsCard
    have hpivotsResidual : pivots ⊆ hallResidual N B :=
      fun pivot hpivot =>
        fiveMillionValuationPart_subset_residual
          N B .evenOne (hpivotsPart hpivot)
    change
      hallBaseTailSquarePayment N B pivots 23 2 / N ≤
        3 * fiveMillionSquareTail23Envelope / 25 +
          regime.rootEnvelope / 2
    exact hallBaseTailSquarePayment_threeTwo_hybrid_even23_ratio_le
      normalProvider twistProvider rootProvider hcover hBout
      hpivotsResidual hpivotsCard
  · intro pivots hpivotsPart hpivotsCard
    have hpivotsResidual : pivots ⊆ hallResidual N B :=
      fun pivot hpivot =>
        fiveMillionValuationPart_subset_residual
          N B .evenTwo (hpivotsPart hpivot)
    change
      hallBaseTailSquarePayment N B pivots 23 2 / N ≤
        3 * fiveMillionSquareTail23Envelope / 25 +
          regime.rootEnvelope / 2
    exact hallBaseTailSquarePayment_threeTwo_hybrid_even23_ratio_le
      normalProvider twistProvider rootProvider hcover hBout
      hpivotsResidual hpivotsCard
  · intro pivots hpivotsPart hpivotsCard
    have hpivotsResidual : pivots ⊆ hallResidual N B :=
      fun pivot hpivot =>
        fiveMillionValuationPart_subset_residual
          N B .evenThree (hpivotsPart hpivot)
    change
      hallBaseTailSquarePayment N B pivots 23 2 / N ≤
        3 * fiveMillionSquareTail23Envelope / 25 +
          regime.rootEnvelope / 2
    exact hallBaseTailSquarePayment_threeTwo_hybrid_even23_ratio_le
      normalProvider twistProvider rootProvider hcover hBout
      hpivotsResidual hpivotsCard
  · intro pivots hpivotsClass hpivotsCard
    have hpivotsResidual : pivots ⊆ hallResidual N B := by
      intro pivot hpivot
      obtain ⟨valuation, _hOdd, hpivotPart⟩ :=
        hpivotsClass pivot hpivot
      exact fiveMillionValuationPart_subset_residual
        N B valuation hpivotPart
    change
      hallBaseTailSquarePayment N B pivots 19 2 / N ≤
        twentyMillionSquareOdd + regime.rootEnvelope / 2
    exact hallBaseTailSquarePayment_threeTwo_hybrid_odd19_ratio_le
      normalProvider twistProvider rootProvider hcover hBout
      hpivotsResidual hpivotsCard

#print axioms hybridKernelTerminalCertificate_of_branch

end Erdos848
