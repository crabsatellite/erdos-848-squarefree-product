import Erdos848.TailTwentyMillionArithmetic
import Erdos848.TailR263EvenThreeTail
import Erdos848.TailHybridPaperDiagonalGridData

namespace Erdos848

/-!
# Ten-branch arithmetic for `200M <= N < 2B`

This is the exact-rational assembly layer for the four actual-support blocks
in the paper.  It deliberately separates arithmetic from the root-support
certificate: the latter only has to supply the four `hybridRootEnvelope`
bounds below.
-/

def HybridPaperDiagonalRegime.Covers
    (regime : HybridPaperDiagonalRegime) (N : Nat) : Prop :=
  regime.lower ≤ N ∧ N < regime.stop

theorem exists_hybridPaperDiagonalRegime
    {N : Nat} (hLower : 200_000_000 ≤ N)
    (hUpper : N < 2_000_000_000) :
    ∃ regime : HybridPaperDiagonalRegime, regime.Covers N := by
  by_cases h300 : N < 300_000_000
  · exact ⟨.twoHundredToThreeHundred, hLower, h300⟩
  by_cases h500 : N < 500_000_000
  · exact ⟨.threeHundredToFiveHundred,
      Nat.le_of_not_gt h300, h500⟩
  by_cases h1000 : N < 1_000_000_000
  · exact ⟨.fiveHundredToOneBillion,
      Nat.le_of_not_gt h500, h1000⟩
  · exact ⟨.oneToTwoBillion,
      Nat.le_of_not_gt h1000, hUpper⟩

theorem HybridPaperDiagonalRegime.regimeAt_eq
    {regime : HybridPaperDiagonalRegime} {N : Nat}
    (hcover : regime.Covers N) :
    hybridPaperDiagonalRegimeAt N = regime := by
  symm
  exact HybridPaperDiagonalRegime.eq_regimeAt_of_mem
    (rowLower := N) (rowUpper := N)
    ⟨hcover.1, le_rfl, hcover.2⟩ le_rfl le_rfl

def hybridTenBranchDelta
    (regime : HybridPaperDiagonalRegime) : Rat :=
  1 / 20_001 + 1 / regime.lower

def hybridTenBranchDiagonal
    (regime : HybridPaperDiagonalRegime)
    (selection : PaperDiagonalSelection) : Rat :=
  (regime.envelopeNumerator selection : Rat) / 1_000_000_000

/-- Certificate-friendly ceilings for the four root payments, scaled by
`10^9`.  They retain ample strict slack in all ten terminal branches while
allowing the packed prime-count witnesses to be consumed at their native
16,384/30,030 interval widths rather than after thousands of artificial
subdivisions.  The ten-branch tail uses one half of the selected value. -/
def HybridPaperDiagonalRegime.rootEnvelopeNumerator :
    HybridPaperDiagonalRegime → Nat
  | .twoHundredToThreeHundred => 9_000_000
  | .threeHundredToFiveHundred => 7_700_000
  | .fiveHundredToOneBillion => 6_400_000
  | .oneToTwoBillion => 5_000_000

def HybridPaperDiagonalRegime.rootEnvelope
    (regime : HybridPaperDiagonalRegime) : Rat :=
  regime.rootEnvelopeNumerator / 1_000_000_000

def hybridTenBranchResidualPayment
    (regime : HybridPaperDiagonalRegime)
    (branch : TwentyMillionBranch) : Rat :=
  match branch with
  | .evenOneGeneric | .evenTwoGeneric =>
      hybridTenBranchDiagonal regime .unrestricted
  | .evenOneCommonThree =>
      hybridTenBranchDiagonal regime (.concentrated 0 0)
  | .evenTwoCommonThree =>
      hybridTenBranchDiagonal regime (.evenTwoCell 0) +
        hybridTenBranchDelta regime
  | .evenThreeGeneric | .evenThreeCommonThree =>
      hybridTenBranchDiagonal regime .lowTwoAdic +
        2 * hybridTenBranchDelta regime
  | .oddTwoGeneric =>
      hybridTenBranchDiagonal regime .oddUnion +
        3 * hybridTenBranchDelta regime
  | .oddTwoCommonThree =>
      hybridTenBranchDiagonal regime (.oddPlusCell false 0) +
        3 * hybridTenBranchDelta regime
  | .oddOneGeneric =>
      hybridTenBranchDiagonal regime (.oneOdd false) +
        3 * hybridTenBranchDelta regime
  | .oddOneCommonThree =>
      hybridTenBranchDiagonal regime (.oneOddCell false 0) +
        3 * hybridTenBranchDelta regime

def hybridTenBranchFinitePayment : TwentyMillionBranch → Rat
  | .evenOneGeneric | .evenTwoGeneric | .evenThreeGeneric =>
      8_685 / 1_000_000
  | .evenOneCommonThree | .evenTwoCommonThree |
      .evenThreeCommonThree => 12_616 / 1_000_000
  | .oddTwoGeneric => 19_420 / 1_000_000
  | .oddTwoCommonThree => 20_878 / 1_000_000
  | .oddOneGeneric => 26_643 / 1_000_000
  | .oddOneCommonThree => 29_459 / 1_000_000

def hybridTenBranchTailPayment
    (regime : HybridPaperDiagonalRegime)
    (branch : TwentyMillionBranch) : Rat :=
  match branch with
  | .evenOneGeneric | .evenOneCommonThree |
      .evenTwoGeneric | .evenTwoCommonThree |
      .evenThreeGeneric | .evenThreeCommonThree =>
      3 * fiveMillionSquareTail23Envelope / 25 +
        regime.rootEnvelope / 2
  | .oddTwoGeneric | .oddTwoCommonThree |
      .oddOneGeneric | .oddOneCommonThree =>
      twentyMillionSquareOdd + regime.rootEnvelope / 2

def hybridTenBranchTotal
    (regime : HybridPaperDiagonalRegime)
    (branch : TwentyMillionBranch) : Rat :=
  hybridTenBranchResidualPayment regime branch +
    hybridTenBranchFinitePayment branch +
      hybridTenBranchTailPayment regime branch

def hybridTenBranchTarget
    (regime : HybridPaperDiagonalRegime) : Rat :=
  1 / 25 - 7 / (25 * regime.lower)

theorem hybridTenBranchTotal_lt_target
    (regime : HybridPaperDiagonalRegime)
    (branch : TwentyMillionBranch) :
    hybridTenBranchTotal regime branch <
      hybridTenBranchTarget regime := by
  cases regime <;> cases branch <;>
    norm_num [hybridTenBranchTotal,
      hybridTenBranchResidualPayment,
      hybridTenBranchFinitePayment,
      hybridTenBranchTailPayment,
      hybridTenBranchTarget,
      hybridTenBranchDelta,
      hybridTenBranchDiagonal,
      HybridPaperDiagonalRegime.rootEnvelope,
      HybridPaperDiagonalRegime.rootEnvelopeNumerator,
      HybridPaperDiagonalRegime.lower,
      HybridPaperDiagonalRegime.envelopeNumerator,
      fiveMillionSquareTail23Envelope,
      twentyMillionSquareOdd]

theorem hybridTenBranchTarget_le_normalizedTarget
    {regime : HybridPaperDiagonalRegime} {N : Nat}
    (hcover : regime.Covers N) :
    hybridTenBranchTarget regime ≤ twentyMillionHallTarget N := by
  have hLowerQ : (regime.lower : Rat) ≤ N := by
    exact_mod_cast hcover.1
  have hLowerPos : (0 : Rat) < regime.lower := by
    cases regime <;>
      norm_num [HybridPaperDiagonalRegime.lower]
  have hNPos : (0 : Rat) < N := hLowerPos.trans_le hLowerQ
  unfold hybridTenBranchTarget twentyMillionHallTarget
  have hDenLowerPos : (0 : Rat) < 25 * regime.lower := by
    positivity
  have hDenLe : (25 : Rat) * regime.lower ≤ 25 * N := by
    exact mul_le_mul_of_nonneg_left hLowerQ (by norm_num)
  have hFrac : (7 : Rat) / (25 * N) ≤
      7 / (25 * regime.lower) :=
    div_le_div_of_nonneg_left (by norm_num) hDenLowerPos hDenLe
  linarith

#print axioms hybridTenBranchTotal_lt_target
#print axioms hybridTenBranchTarget_le_normalizedTarget

end Erdos848
