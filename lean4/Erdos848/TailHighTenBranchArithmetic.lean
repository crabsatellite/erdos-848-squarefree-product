import Erdos848.TailHybridTenBranchArithmetic

namespace Erdos848

/-!
# A certificate-driven ten-branch budget for every high range

The structural Hall split does not depend on the four finite hybrid regimes.
This record exposes only the eight diagonal envelopes and one transformed-root
envelope that its ten terminal branches consume.  A generated row is accepted
only when all ten exact-rational inequalities reduce to `true`.
-/

structure HighTenBranchBudget where
  lower : Nat
  evenOneRootEnvelope : Rat
  evenTwoRootEnvelope : Rat
  rootEnvelope : Rat
  oddRootEnvelope : Rat
  unrestrictedDiagonal : Rat
  concentratedDiagonal : Rat
  evenTwoCellDiagonal : Rat
  lowTwoAdicDiagonal : Rat
  oddUnionDiagonal : Rat
  oddPlusCellDiagonal : Rat
  oneOddDiagonal : Rat
  oneOddCellDiagonal : Rat
  deriving DecidableEq

def HighTenBranchBudget.diagonal
    (budget : HighTenBranchBudget) :
    PaperDiagonalSelection → Rat
  | .unrestricted => budget.unrestrictedDiagonal
  | .concentrated _ _ => budget.concentratedDiagonal
  | .evenTwoCell _ => budget.evenTwoCellDiagonal
  | .lowTwoAdic => budget.lowTwoAdicDiagonal
  | .oddUnion => budget.oddUnionDiagonal
  | .oddPlusCell _ _ => budget.oddPlusCellDiagonal
  | .oneOdd _ => budget.oneOddDiagonal
  | .oneOddCell _ _ => budget.oneOddCellDiagonal

def HighTenBranchBudget.delta
    (budget : HighTenBranchBudget) : Rat :=
  1 / 20_001 + 1 / budget.lower

def HighTenBranchBudget.branchRootEnvelope
    (budget : HighTenBranchBudget) :
    TwentyMillionBranch → Rat
  | .evenOneGeneric | .evenOneCommonThree =>
      budget.evenOneRootEnvelope
  | .evenTwoGeneric | .evenTwoCommonThree =>
      budget.evenTwoRootEnvelope
  | .evenThreeGeneric | .evenThreeCommonThree =>
      budget.rootEnvelope
  | .oddTwoGeneric | .oddTwoCommonThree |
      .oddOneGeneric | .oddOneCommonThree =>
      budget.oddRootEnvelope

def HighTenBranchBudget.residualPayment
    (budget : HighTenBranchBudget)
    (branch : TwentyMillionBranch) : Rat :=
  match branch with
  | .evenOneGeneric | .evenTwoGeneric =>
      budget.diagonal .unrestricted
  | .evenOneCommonThree =>
      budget.diagonal (.concentrated 0 0)
  | .evenTwoCommonThree =>
      budget.diagonal (.evenTwoCell 0) + budget.delta
  | .evenThreeGeneric | .evenThreeCommonThree =>
      budget.diagonal .lowTwoAdic + 2 * budget.delta
  | .oddTwoGeneric =>
      budget.diagonal .oddUnion + 3 * budget.delta
  | .oddTwoCommonThree =>
      budget.diagonal (.oddPlusCell false 0) + 3 * budget.delta
  | .oddOneGeneric =>
      budget.diagonal (.oneOdd false) + 3 * budget.delta
  | .oddOneCommonThree =>
      budget.diagonal (.oneOddCell false 0) + 3 * budget.delta

def HighTenBranchBudget.tailPayment
    (budget : HighTenBranchBudget)
    (branch : TwentyMillionBranch) : Rat :=
  match branch with
  | .evenOneGeneric | .evenOneCommonThree |
      .evenTwoGeneric | .evenTwoCommonThree |
      .evenThreeGeneric | .evenThreeCommonThree =>
      3 * fiveMillionSquareTail23Envelope / 25 +
        budget.branchRootEnvelope branch / 2
  | .oddTwoGeneric | .oddTwoCommonThree |
      .oddOneGeneric | .oddOneCommonThree =>
      twentyMillionSquareOdd +
        budget.branchRootEnvelope branch / 2

def HighTenBranchBudget.total
    (budget : HighTenBranchBudget)
    (branch : TwentyMillionBranch) : Rat :=
  budget.residualPayment branch +
    hybridTenBranchFinitePayment branch +
      budget.tailPayment branch

def HighTenBranchBudget.target
    (budget : HighTenBranchBudget) : Rat :=
  1 / 25 - 7 / (25 * budget.lower)

def highTenBranchBudgetPasses
    (budget : HighTenBranchBudget) : Bool :=
  decide (0 < budget.lower) &&
  decide (budget.total .evenOneGeneric < budget.target) &&
  decide (budget.total .evenOneCommonThree < budget.target) &&
  decide (budget.total .evenTwoGeneric < budget.target) &&
  decide (budget.total .evenTwoCommonThree < budget.target) &&
  decide (budget.total .evenThreeGeneric < budget.target) &&
  decide (budget.total .evenThreeCommonThree < budget.target) &&
  decide (budget.total .oddTwoGeneric < budget.target) &&
  decide (budget.total .oddTwoCommonThree < budget.target) &&
  decide (budget.total .oddOneGeneric < budget.target) &&
  decide (budget.total .oddOneCommonThree < budget.target)

theorem highTenBranchBudgetPasses_sound
    {budget : HighTenBranchBudget}
    (hpass : highTenBranchBudgetPasses budget = true) :
    0 < budget.lower ∧
      ∀ branch : TwentyMillionBranch,
        budget.total branch < budget.target := by
  simp only [highTenBranchBudgetPasses, Bool.and_eq_true,
    decide_eq_true_eq] at hpass
  constructor
  · tauto
  · intro branch
    cases branch <;> tauto

theorem highTenBranchBudgetPasses_complete
    {budget : HighTenBranchBudget}
    (hlower : 0 < budget.lower)
    (hbranch :
      ∀ branch : TwentyMillionBranch,
        budget.total branch < budget.target) :
    highTenBranchBudgetPasses budget = true := by
  simp [highTenBranchBudgetPasses, hlower, hbranch]

structure CertifiedHighTenBranchBudget where
  budget : HighTenBranchBudget
  checked : highTenBranchBudgetPasses budget = true

theorem CertifiedHighTenBranchBudget.total_lt_target
    (certificate : CertifiedHighTenBranchBudget)
    (branch : TwentyMillionBranch) :
    certificate.budget.total branch <
      certificate.budget.target :=
  (highTenBranchBudgetPasses_sound certificate.checked).2 branch

theorem HighTenBranchBudget.target_le_normalizedTarget
    {budget : HighTenBranchBudget} {N : Nat}
    (hlowerPositive : 0 < budget.lower)
    (hN : budget.lower ≤ N) :
    budget.target ≤ twentyMillionHallTarget N := by
  have hLowerQ : (budget.lower : Rat) ≤ N := by
    exact_mod_cast hN
  have hLowerPos : (0 : Rat) < budget.lower := by
    exact_mod_cast hlowerPositive
  have hNPos : (0 : Rat) < N := hLowerPos.trans_le hLowerQ
  unfold HighTenBranchBudget.target twentyMillionHallTarget
  have hDenLowerPos : (0 : Rat) < 25 * budget.lower := by
    positivity
  have hDenLe : (25 : Rat) * budget.lower ≤ 25 * N := by
    exact mul_le_mul_of_nonneg_left hLowerQ (by norm_num)
  have hFrac : (7 : Rat) / (25 * N) ≤
      7 / (25 * budget.lower) :=
    div_le_div_of_nonneg_left (by norm_num) hDenLowerPos hDenLe
  linarith

#print axioms highTenBranchBudgetPasses_sound
#print axioms CertifiedHighTenBranchBudget.total_lt_target
#print axioms HighTenBranchBudget.target_le_normalizedTarget

end Erdos848
