import Erdos848.TailTwentyMillionResidualBudget
import Erdos848.TailGlobalMixedThreePivotActualReduction

namespace Erdos848

/-!
# Literal terminal certificates for the twenty-million interval

The untrusted producer is allowed to choose three actual Hall-completion
pivots and emit finite/root witnesses.  The kernel-facing certificate below
does not contain a bound on the final Hall completion.  Instead, it exposes
separate bounds for the literal periodic finite payment and the literal
one-form square-tail payment.  The residual payment is derived from the
valuation allocation and paper-diagonal certificates.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def twentyMillionBranchCutoff : TwentyMillionBranch → Nat
  | .evenOneGeneric | .evenOneCommonThree
  | .evenTwoGeneric | .evenTwoCommonThree
  | .evenThreeGeneric | .evenThreeCommonThree => 47
  | .oddTwoGeneric | .oddTwoCommonThree
  | .oddOneGeneric | .oddOneCommonThree => 19

def twentyMillionBranchFinitePayment : TwentyMillionBranch → Rat
  | .evenOneGeneric | .evenTwoGeneric | .evenThreeGeneric =>
      twentyMillionFiniteEvenGeneric
  | .evenOneCommonThree | .evenTwoCommonThree | .evenThreeCommonThree =>
      twentyMillionFiniteEvenCommonThree
  | .oddTwoGeneric => twentyMillionFiniteOddTwo
  | .oddTwoCommonThree => twentyMillionFiniteOddTwoCommonThree
  | .oddOneGeneric => twentyMillionFiniteOddOne
  | .oddOneCommonThree => twentyMillionFiniteOddOneCommonThree

def twentyMillionBranchTailPayment : TwentyMillionBranch → Rat
  | .evenOneGeneric | .evenOneCommonThree =>
      twentyMillionSquareEven + twentyMillionRootEvenOne / 2
  | .evenTwoGeneric | .evenTwoCommonThree =>
      twentyMillionSquareEven + twentyMillionRootEvenTwo / 2
  | .evenThreeGeneric | .evenThreeCommonThree =>
      twentyMillionSquareEven + twentyMillionRootEvenThree / 2
  | .oddTwoGeneric | .oddTwoCommonThree
  | .oddOneGeneric | .oddOneCommonThree =>
      twentyMillionSquareOdd + twentyMillionRootOdd / 2

theorem twentyMillionBranchTotal_eq_components
    (branch : TwentyMillionBranch) :
    twentyMillionBranchTotal branch =
      twentyMillionBranchResidualPayment branch +
        twentyMillionBranchFinitePayment branch +
          twentyMillionBranchTailPayment branch := by
  cases branch <;>
    simp only [twentyMillionBranchTotal,
      twentyMillionBranchResidualPayment,
      twentyMillionBranchFinitePayment,
      twentyMillionBranchTailPayment] <;>
    ring

/-- Kernel-facing witness for one terminal row.  The finite and tail fields
bound definitions over the actual `lowBaseSet` and `hallBasePart`; an external
program may generate their proof data but is not trusted by this structure. -/
structure TwentyMillionTerminalCertificate
    (N : Nat) (B : Finset Nat) : Type where
  branch : TwentyMillionBranch
  branchApplies : TwentyMillionBranchApplies N B branch
  pivots : Finset Nat
  pivotsCard : pivots.card = 3
  pivotsCompletion : pivots ⊆ hallCompletion N B
  finiteBound :
    globalMixedBaseFiniteThresholdPayment N pivots
        (twentyMillionBranchCutoff branch) 2 / N ≤
      twentyMillionBranchFinitePayment branch
  tailBound :
    hallBaseTailSquarePayment N B pivots
        (twentyMillionBranchCutoff branch) 2 / N ≤
      twentyMillionBranchTailPayment branch

theorem TwentyMillionTerminalCertificate.completion_ratio_le_branchTotal
    {N : Nat} {B : Finset Nat}
    (hLower : twentyMillionLower ≤ N)
    (hUpper : N < twentyMillionUpper)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hdiagonal : TwentyMillionPaperDiagonalCertificates)
    (certificate : TwentyMillionTerminalCertificate N B) :
    ((hallCompletion N B).card : Rat) / N ≤
      twentyMillionBranchTotal certificate.branch := by
  have hNposNat : 0 < N :=
    lt_of_lt_of_le (by norm_num [twentyMillionLower]) hLower
  have hNposRat : (0 : Rat) < N := by exact_mod_cast hNposNat
  have hraw := hallCompletion_card_le_actualResidualFiniteTail
    (cutoff := twentyMillionBranchCutoff certificate.branch)
    (k := 2) hBprop certificate.pivotsCompletion
    (by
      rw [certificate.pivotsCard]
      norm_num : 2 ≤ certificate.pivots.card)
  have hratio := div_le_div_of_nonneg_right hraw hNposRat.le
  have hresidual := twentyMillionBranch_residual_ratio_le
    hLower hUpper hBout hBprop certificate.branchApplies hdiagonal
  calc
    ((hallCompletion N B).card : Rat) / N ≤
        ((hallResidual N B).card +
          globalMixedBaseFiniteThresholdPayment N certificate.pivots
            (twentyMillionBranchCutoff certificate.branch) 2 +
          hallBaseTailSquarePayment N B certificate.pivots
            (twentyMillionBranchCutoff certificate.branch) 2) / N := hratio
    _ = ((hallResidual N B).card : Rat) / N +
        globalMixedBaseFiniteThresholdPayment N certificate.pivots
          (twentyMillionBranchCutoff certificate.branch) 2 / N +
        hallBaseTailSquarePayment N B certificate.pivots
          (twentyMillionBranchCutoff certificate.branch) 2 / N := by
      ring
    _ ≤ twentyMillionBranchResidualPayment certificate.branch +
        twentyMillionBranchFinitePayment certificate.branch +
        twentyMillionBranchTailPayment certificate.branch :=
      add_le_add
        (add_le_add hresidual certificate.finiteBound)
        certificate.tailBound
    _ = twentyMillionBranchTotal certificate.branch :=
      (twentyMillionBranchTotal_eq_components certificate.branch).symm

/-- Exact producer obligation left for the interval.  It is required only in
the strict-Hall-defect case, where the degree certificate forces one of the
ten allocation rows. -/
def Erdos848TwentyMillionTerminalExhaustion : Prop :=
  ∀ N, twentyMillionLower ≤ N → N < twentyMillionUpper →
    ∀ B : Finset Nat, Erdos848OutsideSet N B →
      NonSquarefreeProductProp B →
      (OriginalA7 N).card <
        B.card + (hallNonNeighbours N B).card →
      Nonempty (TwentyMillionTerminalCertificate N B)

theorem twentyMillionBranchExhaustion_of_terminalExhaustion
    (hdiagonal : TwentyMillionPaperDiagonalCertificates)
    (hexhaustive : Erdos848TwentyMillionTerminalExhaustion) :
    Erdos848TwentyMillionBranchExhaustion := by
  intro N hLower hUpper B hBout hBprop hdefect
  obtain ⟨certificate⟩ :=
    hexhaustive N hLower hUpper B hBout hBprop hdefect
  exact ⟨certificate.branch,
    certificate.completion_ratio_le_branchTotal
      hLower hUpper hBout hBprop hdiagonal⟩

theorem erdos848TwentyMillionClose_of_terminalExhaustion
    (hdiagonal : TwentyMillionPaperDiagonalCertificates)
    (hexhaustive : Erdos848TwentyMillionTerminalExhaustion) :
    Erdos848TwentyMillionClose :=
  erdos848TwentyMillionClose_of_branchExhaustion
    (twentyMillionBranchExhaustion_of_terminalExhaustion
      hdiagonal hexhaustive)

#print axioms twentyMillionBranchTotal_eq_components
#print axioms TwentyMillionTerminalCertificate.completion_ratio_le_branchTotal
#print axioms twentyMillionBranchExhaustion_of_terminalExhaustion
#print axioms erdos848TwentyMillionClose_of_terminalExhaustion

end Erdos848
