import Erdos848.TailFortyMillionKernelCertificateCore
import Erdos848.TailFortyMillionTenBranchResidual
import Erdos848.TailR263MixedHalfDecomposition

namespace Erdos848

/-! Consume a `40M--200M` terminal certificate into its branch total. -/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem FortyMillionKernelTerminalCertificate.completion_ratio_le_branchTotal
    {block : FortyMillionTenBranchBlock}
    {N : Nat} {B : Finset Nat}
    (hcover : block.Covers N)
    (hUpper : N < 200_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (certificate : FortyMillionKernelTerminalCertificate block N B) :
    ((hallCompletion N B).card : Rat) / N ≤
      fortyMillionTenBranchTotal block certificate.branch := by
  have hNposNat : 0 < N := by
    cases block <;>
      simp [FortyMillionTenBranchBlock.Covers,
        FortyMillionTenBranchBlock.lower] at hcover <;> omega
  have hNposRat : (0 : Rat) < N := by exact_mod_cast hNposNat
  have hraw :=
    hallCompletion_card_le_fiveMillionR263MixedHalfComponents
      (cutoff := fortyMillionKernelBranchCutoff certificate.branch)
      hBprop certificate.pivotsCompletion certificate.pivotsCard
  have hratio := div_le_div_of_nonneg_right hraw hNposRat.le
  have hresidual := fortyMillionTenBranch_residual_ratio_le
    hcover hUpper hBout hBprop certificate.branchApplies
  calc
    ((hallCompletion N B).card : Rat) / N ≤
        ((hallResidual N B).card +
          fiveMillionR263BaseMixedHalfPayment N B certificate.pivots
            (fortyMillionKernelBranchCutoff certificate.branch) +
          hallBaseTailSquarePayment N B certificate.pivots
            (fortyMillionKernelBranchCutoff certificate.branch) 2) / N :=
      hratio
    _ = ((hallResidual N B).card : Rat) / N +
        fiveMillionR263BaseMixedHalfPayment N B certificate.pivots
          (fortyMillionKernelBranchCutoff certificate.branch) / N +
        hallBaseTailSquarePayment N B certificate.pivots
          (fortyMillionKernelBranchCutoff certificate.branch) 2 / N := by
      ring
    _ ≤ fortyMillionTenBranchResidualPayment block certificate.branch +
        fortyMillionTenBranchFinitePayment certificate.branch +
        fortyMillionTenBranchTailPayment block certificate.branch :=
      add_le_add
        (add_le_add hresidual certificate.finiteBound)
        certificate.tailBound
    _ = fortyMillionTenBranchTotal block certificate.branch := by
      rfl

def Erdos848FortyMillionClose : Prop :=
  ∀ N, 40_000_000 ≤ N → N < 200_000_000 →
    OriginalProblem848Statement N

theorem erdos848FortyMillionClose_of_terminalBuilder
    (brancher :
      ∀ {N : Nat} {B : Finset Nat},
        20_000_000 ≤ N →
        Erdos848OutsideSet N B →
        NonSquarefreeProductProp B →
        (OriginalA7 N).card <
          B.card + (hallNonNeighbours N B).card →
        ∃ branch : TwentyMillionBranch,
          TwentyMillionBranchApplies N B branch)
    (builder :
      ∀ {block : FortyMillionTenBranchBlock}
        {N : Nat} {B : Finset Nat} {branch : TwentyMillionBranch},
        block.Covers N →
        Erdos848OutsideSet N B →
        TwentyMillionBranchApplies N B branch →
        FortyMillionKernelTerminalCertificate block N B) :
    Erdos848FortyMillionClose := by
  intro N hLower hUpper
  obtain ⟨block, hcover⟩ :=
    exists_fortyMillionTenBranchBlock hLower hUpper
  apply originalProblem_of_hallStatement
  intro B hBout hBprop
  by_contra hnotHall
  have hdefect : (OriginalA7 N).card <
      B.card + (hallNonNeighbours N B).card := by omega
  obtain ⟨branch, hbranch⟩ :=
    brancher (by omega) hBout hBprop hdefect
  let certificate := builder hcover hBout hbranch
  have hratio :=
    certificate.completion_ratio_le_branchTotal
      hcover hUpper hBout hBprop
  have htarget :
      ((hallCompletion N B).card : Rat) / N ≤
        twentyMillionHallTarget N := by
    exact hratio.trans <|
      (le_of_lt
        (fortyMillionTenBranchTotal_lt_target block certificate.branch)).trans <|
      fortyMillionTenBranchTarget_le_normalizedTarget hcover
  have hHall := twentyMillionHall_of_ratio_le_target
    (by omega) hBout htarget
  omega

#print axioms
  FortyMillionKernelTerminalCertificate.completion_ratio_le_branchTotal
#print axioms erdos848FortyMillionClose_of_terminalBuilder

end Erdos848
