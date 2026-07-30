import Erdos848.TailTenMillionCorrectedBudget

namespace Erdos848

/-!
# Corrected periodic odd budgets on the ten-million block

These are the exact rational rows of the cutoff-seven R263 replacement.
Every diagonal term is deliberately reduced to copies of the single uniform
`(mod 4, mod 9)` cell envelope.  In particular, the two capacity-failure
rows use eight or nine ordinary cells rather than a new mod-49 diagonal
certificate.  This makes the later semantic proof consume only
`TenMillionDiagonalOneOddCellCertificate`.
-/

inductive TenMillionPeriodicOddBranch where
  | oneCellMatch
  | oneCellFibreOne
  | oneCellFibreTwo
  | oneCellFibreThree
  | twoCells
  | threeCells
  | fourCells
  | fiveCells
  | sixCells
  | sevenCells
  | eightCellsMatch
  | eightCellsFailure
  | nineCellsMatch
  | nineCellsFailure
  | twoOddBalanced
  | twoOddAtMostElevenCells
  | twoOddOneResidue
  deriving DecidableEq, Repr

def tenMillionPeriodicCharge (rawCharge : Nat) : Rat :=
  27 * tenMillionCellCharge + rawCharge / tenMillionLower

def tenMillionPeriodicFinite
    (density endpoint : Rat) : Rat :=
  2 * density / 25 + 2 * endpoint / tenMillionLower

def tenMillionPeriodicOddTail : Rat :=
  tenMillionRootOdd7 + 6 * tenMillionSquareTail7 / 25

def tenMillionPeriodicRow
    (cellCount rawCharge : Nat)
    (density endpoint tailFactor : Rat) : Rat :=
  cellCount * tenMillionDiagonalOneOddCell +
    tenMillionPeriodicCharge rawCharge +
    tenMillionPeriodicFinite density endpoint +
    tailFactor * tenMillionPeriodicOddTail

def tenMillionPeriodicOddBranchTotal :
    TenMillionPeriodicOddBranch → Rat
  | .oneCellMatch =>
      tenMillionPeriodicRow 1 90 (1 / 3) 392 (4 / 9)
  | .oneCellFibreOne =>
      tenMillionPeriodicRow 1 139 (17 / 49) (19_584 / 49) (2 / 5)
  | .oneCellFibreTwo =>
      tenMillionPeriodicRow 1 139 (53 / 147) (19_928 / 49) (2 / 5)
  | .oneCellFibreThree =>
      tenMillionPeriodicRow 1 139 (1 / 3) 392 (1 / 2)
  | .twoCells =>
      tenMillionPeriodicRow 2 90 (40 / 147) (17_120 / 49) (2 / 3)
  | .threeCells =>
      tenMillionPeriodicRow 3 90 (57 / 196) (71_307 / 196) (1 / 2)
  | .fourCells =>
      tenMillionPeriodicRow 4 90 (169 / 588) (70_811 / 196) (1 / 2)
  | .fiveCells =>
      tenMillionPeriodicRow 5 90 (167 / 588) (70_307 / 196) (1 / 2)
  | .sixCells =>
      tenMillionPeriodicRow 6 90 (55 / 196) (69_795 / 196) (1 / 2)
  | .sevenCells =>
      tenMillionPeriodicRow 7 90 (55 / 196) (69_795 / 196) (1 / 2)
  | .eightCellsMatch =>
      tenMillionPeriodicRow 8 90 (1 / 4) (1_323 / 4) (8 / 15)
  | .eightCellsFailure =>
      tenMillionPeriodicRow 8 90 (55 / 196) (69_795 / 196) (1 / 2)
  | .nineCellsMatch =>
      tenMillionPeriodicRow 9 90 (1 / 4) (1_323 / 4) (8 / 15)
  | .nineCellsFailure =>
      tenMillionPeriodicRow 9 90 (55 / 196) (69_795 / 196) (1 / 2)
  | .twoOddBalanced =>
      tenMillionPeriodicRow 18 90 (1 / 42) 41 1
  | .twoOddAtMostElevenCells =>
      18 * tenMillionDiagonalOneOddCell +
        tenMillionPeriodicCharge 90 +
        4 * tenMillionOddFourDensity / 25 +
        4 * tenMillionOddFourEndpoint / tenMillionLower +
        4 * tenMillionSquareTail7 / 25 +
        2 * tenMillionRootOdd7 / 3
  | .twoOddOneResidue =>
      2 * tenMillionDiagonalOneOddCell +
        tenMillionPeriodicCharge 90 +
        tenMillionOddTwoCellDensity / 25 +
        tenMillionOddTwoCellEndpoint / tenMillionLower +
        3 * tenMillionSquareTail7 / 25 +
        tenMillionRootOdd7 / 2

theorem tenMillionPeriodicOddBranchTotal_le_evenControlling
    (branch : TenMillionPeriodicOddBranch) :
    tenMillionPeriodicOddBranchTotal branch ≤
      tenMillionCorrectedControllingTotal := by
  cases branch <;>
    norm_num [tenMillionPeriodicOddBranchTotal,
      tenMillionPeriodicRow, tenMillionPeriodicCharge,
      tenMillionPeriodicFinite, tenMillionPeriodicOddTail,
      tenMillionCorrectedControllingTotal,
      tenMillionCorrectedEvenBranchTotal,
      TenMillionCorrectedEvenBranch.legacy, tenMillionBranchTotal,
      tenMillionCellCharge, tenMillionDiagonalOneOddCell,
      tenMillionOddFourDensity, tenMillionOddFourEndpoint,
      tenMillionOddTwoCellDensity, tenMillionOddTwoCellEndpoint,
      tenMillionRootOdd7, tenMillionSquareTail7,
      tenMillionDiagonalUnrestricted, tenMillionFourPayment,
      tenMillionEvenFourDensity, tenMillionEvenFourEndpoint,
      tenMillionSquareTail23, tenMillionSquareTail29,
      tenMillionRootV2, tenMillionLower]

theorem tenMillionPeriodicOddBranchTotal_lt_lowerTarget
    (branch : TenMillionPeriodicOddBranch) :
    tenMillionPeriodicOddBranchTotal branch <
      tenMillionHallTarget tenMillionLower :=
  lt_of_le_of_lt
    (tenMillionPeriodicOddBranchTotal_le_evenControlling branch)
    (tenMillionCorrectedControlling_lt_target_sub_fiftyFivePpm.trans
      (by
        norm_num [tenMillionHallTarget, tenMillionLower]))

#print axioms tenMillionPeriodicOddBranchTotal_le_evenControlling
#print axioms tenMillionPeriodicOddBranchTotal_lt_lowerTarget

end Erdos848
