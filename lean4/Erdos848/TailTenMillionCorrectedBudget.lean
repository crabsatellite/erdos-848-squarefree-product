import Erdos848.TailTenMillionBudget

namespace Erdos848

/-!
# Exact numerical close for the ten-million even branches

The odd allocation is handled by the cutoff-seven periodic theorem.  Among
the five even cell branches, `E2` with two dense cells is controlling after
the certified reciprocal-survivor root ceiling is included.
-/

inductive TenMillionCorrectedEvenBranch where
  | e1TwoCells
  | e1OneCell
  | e2TwoCells
  | e2OneCell
  | e3Cell
  deriving DecidableEq

def TenMillionCorrectedEvenBranch.baseBranch :
    TenMillionCorrectedEvenBranch → TenMillionBranch
  | .e1TwoCells => .e1TwoCells
  | .e1OneCell => .e1OneCell
  | .e2TwoCells => .e2TwoCells
  | .e2OneCell => .e2OneCell
  | .e3Cell => .e3Cell

def tenMillionCorrectedEvenBranchTotal
    (branch : TenMillionCorrectedEvenBranch) : Rat :=
  tenMillionBranchTotal branch.baseBranch

def tenMillionCorrectedControllingTotal : Rat :=
  tenMillionCorrectedEvenBranchTotal .e2TwoCells

theorem tenMillionCorrectedControllingTotal_exact :
    tenMillionCorrectedControllingTotal =
      2_097_576_872_990_460_283_764_560_718_228_160_613_483 /
        52_512_422_879_405_865_826_926_024_950_526_125_000_000 := by
  norm_num [tenMillionCorrectedControllingTotal,
    tenMillionCorrectedEvenBranchTotal,
    TenMillionCorrectedEvenBranch.baseBranch, tenMillionBranchTotal,
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
      TenMillionCorrectedEvenBranch.baseBranch, tenMillionBranchTotal,
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
    TenMillionCorrectedEvenBranch.baseBranch, tenMillionBranchTotal,
    tenMillionHallTarget, tenMillionDiagonalUnrestricted,
    tenMillionFourPayment, tenMillionEvenFourDensity,
    tenMillionEvenFourEndpoint, tenMillionSquareTail23,
    tenMillionSquareTail29,
    tenMillionRootV2, tenMillionLower]

#print axioms tenMillionCorrectedControllingTotal_exact
#print axioms tenMillionCorrectedEvenBranchTotal_le_controlling
#print axioms tenMillionCorrectedControlling_lt_target_sub_fiftyFivePpm

end Erdos848
