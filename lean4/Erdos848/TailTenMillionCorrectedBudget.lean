import Erdos848.TailTenMillionBudget

namespace Erdos848

/-!
# Corrected numerical close for the ten-million even branches

The historical one-odd branch is intentionally absent.  Its replacement is
the cutoff-seven periodic allocation.  Among the five unchanged even cell
branches, `E2` with two dense cells remains controlling after the
kernel-corrected reciprocal-survivor root ceiling is substituted.
-/

inductive TenMillionCorrectedEvenBranch where
  | e1TwoCells
  | e1OneCell
  | e2TwoCells
  | e2OneCell
  | e3Cell
  deriving DecidableEq

def TenMillionCorrectedEvenBranch.legacy :
    TenMillionCorrectedEvenBranch → TenMillionBranch
  | .e1TwoCells => .e1TwoCells
  | .e1OneCell => .e1OneCell
  | .e2TwoCells => .e2TwoCells
  | .e2OneCell => .e2OneCell
  | .e3Cell => .e3Cell

def tenMillionCorrectedEvenBranchTotal
    (branch : TenMillionCorrectedEvenBranch) : Rat :=
  tenMillionBranchTotal branch.legacy

def tenMillionCorrectedControllingTotal : Rat :=
  tenMillionCorrectedEvenBranchTotal .e2TwoCells

theorem tenMillionCorrectedControllingTotal_exact :
    tenMillionCorrectedControllingTotal =
      2_097_576_872_990_460_283_764_560_718_228_160_613_483 /
        52_512_422_879_405_865_826_926_024_950_526_125_000_000 := by
  norm_num [tenMillionCorrectedControllingTotal,
    tenMillionCorrectedEvenBranchTotal,
    TenMillionCorrectedEvenBranch.legacy, tenMillionBranchTotal,
    tenMillionDiagonalUnrestricted, tenMillionFourPayment,
    tenMillionEvenFourDensity, tenMillionEvenFourEndpoint,
    tenMillionSquareTail23, tenMillionSquareTail29,
    tenMillionRootV2, tenMillionLower]

theorem tenMillionCorrectedEvenBranchTotal_le_controlling
    (branch : TenMillionCorrectedEvenBranch) :
    tenMillionCorrectedEvenBranchTotal branch ≤
      tenMillionCorrectedControllingTotal := by
  cases branch <;>
    norm_num [tenMillionCorrectedControllingTotal,
      tenMillionCorrectedEvenBranchTotal,
      TenMillionCorrectedEvenBranch.legacy, tenMillionBranchTotal,
      tenMillionCellCharge, tenMillionDiagonalUnrestricted,
      tenMillionDiagonalConcentrated, tenMillionDiagonalLowTwoAdic,
      tenMillionDiagonalE2Cell,
      tenMillionRootV1, tenMillionRootV2, tenMillionRootV3,
      tenMillionSquareTail7, tenMillionSquareTail23,
      tenMillionSquareTail29,
      tenMillionFinitePayment, tenMillionFourPayment,
      tenMillionEvenFourDensity, tenMillionEvenFourEndpoint,
      tenMillionEvenCellDensity, tenMillionEvenCellEndpoint,
      tenMillionLower]

theorem tenMillionCorrectedControlling_lt_target_sub_fiftyFivePpm :
    tenMillionCorrectedControllingTotal <
      tenMillionHallTarget tenMillionLower - 55 / 1_000_000 := by
  norm_num [tenMillionCorrectedControllingTotal,
    tenMillionCorrectedEvenBranchTotal,
    TenMillionCorrectedEvenBranch.legacy, tenMillionBranchTotal,
    tenMillionHallTarget, tenMillionDiagonalUnrestricted,
    tenMillionFourPayment, tenMillionEvenFourDensity,
    tenMillionEvenFourEndpoint, tenMillionSquareTail23,
    tenMillionSquareTail29,
    tenMillionRootV2, tenMillionLower]

#print axioms tenMillionCorrectedControllingTotal_exact
#print axioms tenMillionCorrectedEvenBranchTotal_le_controlling
#print axioms tenMillionCorrectedControlling_lt_target_sub_fiftyFivePpm

end Erdos848
