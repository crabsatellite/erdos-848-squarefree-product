import Erdos848.TailHighPieceWheelDiagonalTerminal
import Erdos848.TailHighVariableActualTail

namespace Erdos848

/-!
# Checked data for the unbounded terminal

These are small exact-rational constants, not external certificates.  Lean
reduces all root, diagonal, and ten-branch inequalities in the kernel.
-/

def highUnboundedBudget : HighTenBranchBudget where
  lower := 500_000_000_000
  evenOneRootEnvelope := 8_062_340 / 1_000_000_000
  evenTwoRootEnvelope := 8_062_340 / 1_000_000_000
  rootEnvelope := 8_062_340 / 1_000_000_000
  oddRootEnvelope := 8_062_340 / 1_000_000_000
  unrestrictedDiagonal := 26_005_710 / 1_000_000_000
  concentratedDiagonal := 20_944_421 / 1_000_000_000
  evenTwoCellDiagonal := 17_208_292 / 1_000_000_000
  lowTwoAdicDiagonal := 16_649_746 / 1_000_000_000
  oddUnionDiagonal := 13_003_280 / 1_000_000_000
  oddPlusCellDiagonal := 7_437_057 / 1_000_000_000
  oneOddDiagonal := 6_604_680 / 1_000_000_000
  oneOddCellDiagonal := 917_036 / 1_000_000_000

def highUnboundedRootTerminal : HighVariableRootTerminal where
  lower := highUnboundedBudget.lower
  split := 120
  rootFloor := 840
  primeProfile := .p47
  rootEnvelope := highUnboundedBudget.rootEnvelope

def highUnboundedDiagonalTerminal : HighPieceWheelDiagonalTerminal where
  unrestrictedDivisor := 1_821
  concentratedDivisor := 2_892
  evenTwoCellDivisor := 2_627
  lowTwoAdicDivisor := 2_295
  oddUnionDivisor := 3_643
  oddPlusCellDivisor := 4_590
  oneOddDivisor := 3_643
  oneOddCellDivisor := 3_643
  rootFloor := 840
  budget := highUnboundedBudget

theorem highUnboundedRootTerminal_checked :
    highUnboundedRootTerminal.check = true := by
  unfold HighVariableRootTerminal.check
  rw [decide_eq_true_eq]
  unfold HighVariableRootTerminal.Valid
  refine ⟨by
      norm_num [highUnboundedRootTerminal, highUnboundedBudget],
    by norm_num [highUnboundedRootTerminal],
    by
      norm_num [highUnboundedRootTerminal, highUnboundedBudget,
        anchoredPrimePoint],
    by norm_num [highUnboundedRootTerminal],
    by
      norm_num [highUnboundedRootTerminal, highUnboundedBudget],
    ?_⟩
  simp only [highUnboundedRootTerminal, highUnboundedBudget]
  unfold highVariableRootCombinedBound
  unfold anchoredTerminalPrimeDoubleRatioBound
  simp only [AnchoredPrimeProfileId.profile]
  unfold anchoredPrimeAffineIntercept
  rw [anchoredPrimeProfile47_termCount]
  norm_num [anchoredPrimeProfile47, anchoredPrimePoint,
    anchoredPrimeUpper]

theorem highUnboundedDiagonalTerminal_checked :
    highUnboundedDiagonalTerminal.check = true := by
  unfold HighPieceWheelDiagonalTerminal.check
  rw [decide_eq_true_eq]
  unfold HighPieceWheelDiagonalTerminal.Valid
  refine ⟨by norm_num [highUnboundedDiagonalTerminal],
    by norm_num [highUnboundedDiagonalTerminal, highUnboundedBudget],
    ?_⟩
  intro selection
  cases selection <;>
    norm_num [highPieceWheelDiagonalTerminalBound,
      highUnboundedDiagonalTerminal, highUnboundedBudget,
      HighPieceWheelDiagonalTerminal.divisor,
      HighTenBranchBudget.diagonal,
      PaperDiagonalSelection.selectionPeriod,
      PaperDiagonalSelection.selectionResidueCount,
      PaperDiagonalSelection.highPieceCount,
      PaperDiagonalSelection.isOdd,
      highDiagonalReciprocalBound,
      highDiagonalWheelSixRatioBound,
      highDiagonalWheelSixPeriod,
      highDynamicLargeSquareMultiplier]

theorem highUnboundedBudget_checked :
    highTenBranchBudgetPasses highUnboundedBudget = true := by
  simp only [highTenBranchBudgetPasses, Bool.and_eq_true,
    decide_eq_true_eq]
  norm_num [highUnboundedBudget,
    HighTenBranchBudget.total, HighTenBranchBudget.target,
    HighTenBranchBudget.residualPayment, HighTenBranchBudget.tailPayment,
    HighTenBranchBudget.delta, HighTenBranchBudget.diagonal,
    HighTenBranchBudget.branchRootEnvelope,
    hybridTenBranchFinitePayment, fiveMillionSquareTail23Envelope,
    twentyMillionSquareOdd]

#print axioms highUnboundedRootTerminal_checked
#print axioms highUnboundedDiagonalTerminal_checked
#print axioms highUnboundedBudget_checked

end Erdos848
