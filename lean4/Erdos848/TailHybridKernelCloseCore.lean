import Erdos848.TailHybridPaperActualTail
import Erdos848.TailHybridTenBranchResidual
import Erdos848.TailHighKernelCloseCore

namespace Erdos848

/-!
# Shared proposition-valued terminal interface for `200M ≤ N < 2B`

The terminal uses the same finite and tail fields as the high-range
certificate.  A lightweight budget adapter supplies only the root envelope;
the hybrid residual is still proved by the regime-specific semantic theorem.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def hybridTerminalBudget
    (regime : HybridPaperDiagonalRegime) : HighTenBranchBudget where
  lower := regime.lower
  evenOneRootEnvelope := regime.rootEnvelope
  evenTwoRootEnvelope := regime.rootEnvelope
  rootEnvelope := regime.rootEnvelope
  oddRootEnvelope := regime.rootEnvelope
  unrestrictedDiagonal := 0
  concentratedDiagonal := 0
  evenTwoCellDiagonal := 0
  lowTwoAdicDiagonal := 0
  oddUnionDiagonal := 0
  oddPlusCellDiagonal := 0
  oneOddDiagonal := 0
  oneOddCellDiagonal := 0

def HybridKernelTerminalCertificate
    (regime : HybridPaperDiagonalRegime)
    (N : Nat) (B : Finset Nat) : Prop :=
  HighKernelTerminalCertificate (hybridTerminalBudget regime) N B

theorem HybridKernelTerminalCertificate.completion_ratio_le_branchTotal
    {regime : HybridPaperDiagonalRegime}
    {N : Nat} {B : Finset Nat}
    (hcover : regime.Covers N)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (certificate : HybridKernelTerminalCertificate regime N B) :
    ∃ branch : TwentyMillionBranch,
      ((hallCompletion N B).card : Rat) / N ≤
        hybridTenBranchTotal regime branch := by
  rcases certificate with
    ⟨branch, pivots, hbranch, hpivotsCard, hpivotsCompletion,
      hfinite, htail⟩
  refine ⟨branch, ?_⟩
  have hNposNat : 0 < N := by
    cases regime <;>
      simp [HybridPaperDiagonalRegime.Covers,
        HybridPaperDiagonalRegime.lower] at hcover <;>
      omega
  have hNposRat : (0 : Rat) < N := by exact_mod_cast hNposNat
  have hraw :=
    hallCompletion_card_le_fiveMillionR263MixedHalfComponents
      (cutoff := highKernelBranchCutoff branch)
      hBprop hpivotsCompletion hpivotsCard
  have hratio := div_le_div_of_nonneg_right hraw hNposRat.le
  have hresidual := hybridTenBranch_residual_ratio_le
    hcover hBout hBprop hbranch
  have htailHybrid :
      hallBaseTailSquarePayment N B pivots
          (highKernelBranchCutoff branch) 2 / N ≤
        hybridTenBranchTailPayment regime branch := by
    cases branch <;>
      simpa [hybridTerminalBudget, HighTenBranchBudget.tailPayment,
        HighTenBranchBudget.branchRootEnvelope,
        hybridTenBranchTailPayment] using htail
  calc
    ((hallCompletion N B).card : Rat) / N ≤
      ((hallResidual N B).card +
          fiveMillionR263BaseMixedHalfPayment N B pivots
            (highKernelBranchCutoff branch) +
          hallBaseTailSquarePayment N B pivots
            (highKernelBranchCutoff branch) 2) / N :=
      hratio
    _ = ((hallResidual N B).card : Rat) / N +
        fiveMillionR263BaseMixedHalfPayment N B pivots
          (highKernelBranchCutoff branch) / N +
        hallBaseTailSquarePayment N B pivots
          (highKernelBranchCutoff branch) 2 / N := by
      ring
    _ ≤ hybridTenBranchResidualPayment regime branch +
        hybridTenBranchFinitePayment branch +
        hybridTenBranchTailPayment regime branch :=
      add_le_add
        (add_le_add hresidual hfinite)
        htailHybrid
    _ = hybridTenBranchTotal regime branch := by rfl

#print axioms
  HybridKernelTerminalCertificate.completion_ratio_le_branchTotal

end Erdos848
