import Erdos848.TailFiveMillionR263Terminal
import Erdos848.TailTenMillionPeriodicBudget

namespace Erdos848

/-!
# Semantic terminal interface for the 10M--20M R263 close

The finite allocation is the same R263 split used below ten million.  Only
the interval-specific diagonal, finite-prefix, and transformed-root payments
change.  Each terminal exposes the actual Hall components; the kernel performs
their final assembly and comparison with the exact Hall target.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

inductive TenMillionR263Branch where
  | even (branch : TenMillionCorrectedEvenBranch)
  | odd (branch : TenMillionPeriodicOddBranch)
  deriving DecidableEq

def tenMillionR263BranchTotal : TenMillionR263Branch → Rat
  | .even branch => tenMillionCorrectedEvenBranchTotal branch
  | .odd branch => tenMillionPeriodicOddBranchTotal branch

theorem tenMillionR263BranchTotal_le_controlling
    (branch : TenMillionR263Branch) :
    tenMillionR263BranchTotal branch ≤
      tenMillionCorrectedControllingTotal := by
  cases branch with
  | even branch =>
      exact tenMillionCorrectedEvenBranchTotal_le_controlling branch
  | odd branch =>
      exact tenMillionPeriodicOddBranchTotal_le_evenControlling branch

/-- A terminal certificate contains only actual Hall components and separately
proved interval envelopes.  No field may assume the final Hall inequality. -/
structure TenMillionR263TerminalCertificate
    (N : Nat) (B : Finset Nat) : Type where
  branch : TenMillionR263Branch
  pivots : Finset Nat
  cutoff : Nat
  threshold : Nat
  thresholdPositive : 0 < threshold
  thresholdCard : threshold ≤ pivots.card
  pivotsCompletion : pivots ⊆ hallCompletion N B
  residualEnvelope : Rat
  finiteEnvelope : Rat
  tailEnvelope : Rat
  residualBound : ((hallResidual N B).card : Rat) / N ≤ residualEnvelope
  finiteBound :
    fiveMillionR263BaseFiniteThresholdPayment
      N B pivots cutoff threshold / N ≤ finiteEnvelope
  tailBound :
    hallBaseTailSquarePayment N B pivots cutoff threshold / N ≤ tailEnvelope
  componentTotalBound :
    residualEnvelope + finiteEnvelope + tailEnvelope ≤
      tenMillionR263BranchTotal branch

theorem TenMillionR263TerminalCertificate.completion_ratio_lt_target
    {N : Nat} {B : Finset Nat}
    (hLower : tenMillionLower ≤ N)
    (hBprop : NonSquarefreeProductProp B)
    (certificate : TenMillionR263TerminalCertificate N B) :
    ((hallCompletion N B).card : Rat) / N <
      tenMillionHallTarget N := by
  have hNpos : (0 : Rat) < N := by
    exact_mod_cast
      (lt_of_lt_of_le (by norm_num [tenMillionLower]) hLower)
  have hraw := hallCompletion_card_le_fiveMillionR263Components
    (cutoff := certificate.cutoff) (k := certificate.threshold)
      hBprop certificate.pivotsCompletion certificate.thresholdCard
  have hratio := div_le_div_of_nonneg_right hraw hNpos.le
  calc
    ((hallCompletion N B).card : Rat) / N ≤
        ((hallResidual N B).card +
          fiveMillionR263BaseFiniteThresholdPayment N B certificate.pivots
            certificate.cutoff certificate.threshold +
          hallBaseTailSquarePayment N B certificate.pivots
            certificate.cutoff certificate.threshold) / N := hratio
    _ = ((hallResidual N B).card : Rat) / N +
        fiveMillionR263BaseFiniteThresholdPayment N B certificate.pivots
          certificate.cutoff certificate.threshold / N +
        hallBaseTailSquarePayment N B certificate.pivots
          certificate.cutoff certificate.threshold / N := by ring
    _ ≤ certificate.residualEnvelope + certificate.finiteEnvelope +
        certificate.tailEnvelope :=
      add_le_add
        (add_le_add certificate.residualBound certificate.finiteBound)
        certificate.tailBound
    _ ≤ tenMillionR263BranchTotal certificate.branch :=
      certificate.componentTotalBound
    _ ≤ tenMillionCorrectedControllingTotal :=
      tenMillionR263BranchTotal_le_controlling certificate.branch
    _ < tenMillionHallTarget tenMillionLower := by
      exact tenMillionCorrectedControlling_lt_target_sub_sixtyEightPpm.trans
        (by norm_num [tenMillionHallTarget, tenMillionLower])
    _ ≤ tenMillionHallTarget N := tenMillionLowerTarget_le hLower

def TenMillionR263BranchExhaustion : Prop :=
  ∀ N, tenMillionLower ≤ N → N < tenMillionUpper →
    ∀ B : Finset Nat, Erdos848OutsideSet N B →
      NonSquarefreeProductProp B →
      (OriginalA7 N).card <
        B.card + (hallNonNeighbours N B).card →
      Nonempty (TenMillionR263TerminalCertificate N B)

theorem erdos848TenToTwentyMillionClose_of_R263BranchExhaustion
    (hexhaustive : TenMillionR263BranchExhaustion) :
    ∀ N, tenMillionLower ≤ N → N < tenMillionUpper →
      OriginalProblem848Statement N := by
  intro N hLower hUpper
  apply originalProblem_of_hallStatement
  intro B hBout hBprop
  by_contra hnotHall
  have hdefect :
      (OriginalA7 N).card <
        B.card + (hallNonNeighbours N B).card := by omega
  obtain ⟨certificate⟩ :=
    hexhaustive N hLower hUpper B hBout hBprop hdefect
  have hcompletion :=
    certificate.completion_ratio_lt_target hLower hBprop
  have hHall := hallCompletion_card_le_of_ratio_le_target
    (lt_of_lt_of_le (by norm_num [tenMillionLower]) hLower)
      hBout hcompletion.le
  omega

#print axioms tenMillionR263BranchTotal_le_controlling
#print axioms TenMillionR263TerminalCertificate.completion_ratio_lt_target
#print axioms erdos848TenToTwentyMillionClose_of_R263BranchExhaustion

end Erdos848
