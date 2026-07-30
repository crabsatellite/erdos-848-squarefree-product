import Erdos848.TailTwentyMillionArithmetic
import Erdos848.TailSquareTail23
import Erdos848.TailPaperDiagonalGridChecker
import Erdos848.TailFortyMillionBlockDefs

namespace Erdos848

/-!
# Ten-branch arithmetic for `40M <= N < 200M`

The degree-19 exhaustion and cutoff-19/23 finite certificates do not stop at
`40M`.  Reusing those ten branches avoids a second finite-sieve
formalization.  The only block-dependent inputs are the checked paper-grid
envelopes and the transformed-root ceilings from the archived computation.

This file is only exact rational arithmetic.  It does not assume any root
certificate or final Hall inequality.
-/

def FortyMillionTenBranchBlock.regime :
    FortyMillionTenBranchBlock -> PaperDiagonalRegime
  | .fortyToFifty => .fortyToFifty
  | .fiftyToSeventy => .fiftyToSeventy
  | .seventyToEighty => .seventyToEighty
  | .eightyToHundred => .eightyToHundred
  | .hundredToHundredFifty => .hundredToHundredFifty
  | .hundredFiftyToTwoHundred => .hundredFiftyToTwoHundred

theorem exists_fortyMillionTenBranchBlock
    {N : Nat} (hLower : 40_000_000 <= N) (hUpper : N < 200_000_000) :
    ∃ block : FortyMillionTenBranchBlock, block.Covers N := by
  by_cases h50 : N < 50_000_000
  · exact ⟨.fortyToFifty, hLower, h50⟩
  by_cases h70 : N < 70_000_000
  · exact ⟨.fiftyToSeventy, Nat.le_of_not_gt h50, h70⟩
  by_cases h80 : N < 80_000_000
  · exact ⟨.seventyToEighty, Nat.le_of_not_gt h70, h80⟩
  by_cases h100 : N < 100_000_000
  · exact ⟨.eightyToHundred, Nat.le_of_not_gt h80, h100⟩
  by_cases h150 : N < 150_000_000
  · exact ⟨.hundredToHundredFifty, Nat.le_of_not_gt h100, h150⟩
  · exact ⟨.hundredFiftyToTwoHundred,
      Nat.le_of_not_gt h150, hUpper⟩

theorem FortyMillionTenBranchBlock.regimeAt_eq
    {block : FortyMillionTenBranchBlock} {N : Nat}
    (hcover : block.Covers N) :
    paperDiagonalRegimeAt N = block.regime := by
  symm
  apply PaperDiagonalRegime.eq_regimeAt_of_mem
      (rowLower := N) (rowUpper := N)
  · cases block <;>
      simpa [FortyMillionTenBranchBlock.Covers,
        FortyMillionTenBranchBlock.lower,
        FortyMillionTenBranchBlock.upper,
        FortyMillionTenBranchBlock.regime,
        PaperDiagonalRegime.lower,
        PaperDiagonalRegime.stop] using hcover
  · exact le_rfl
  · exact le_rfl

def fortyMillionTenBranchDelta
    (block : FortyMillionTenBranchBlock) : Rat :=
  1 / 20_001 + 1 / block.lower

def fortyMillionTenBranchDiagonal
    (block : FortyMillionTenBranchBlock)
    (selection : PaperDiagonalSelection) : Rat :=
  (block.regime.envelopeNumerator selection : Rat) / 1_000_000_000

/-- Kernel-checker envelopes obtained from the already public all-support QR
witness at fixed split `55` and cutoff `23`.  The values combine the maximum
checked root coefficient with the cumulative upper prime count on intervals
of length `16_384`; no new support tree is needed. -/
def fortyMillionTenBranchRootEvenOneNumerator :
    FortyMillionTenBranchBlock -> Nat
  | .fortyToFifty => 9_677_836
  | .fiftyToSeventy => 9_350_108
  | .seventyToEighty => 8_921_868
  | .eightyToHundred => 8_771_555
  | .hundredToHundredFifty => 8_534_837
  | .hundredFiftyToTwoHundred => 8_175_215

def fortyMillionTenBranchRootEvenTwoNumerator :
    FortyMillionTenBranchBlock -> Nat
  | .fortyToFifty => 9_973_185
  | .fiftyToSeventy => 9_648_325
  | .seventyToEighty => 9_135_839
  | .eightyToHundred => 8_959_044
  | .hundredToHundredFifty => 8_684_996
  | .hundredFiftyToTwoHundred => 8_275_070

def fortyMillionTenBranchRootEvenThreeNumerator :
    FortyMillionTenBranchBlock -> Nat
  | .fortyToFifty => 10_991_872
  | .fiftyToSeventy => 10_405_463
  | .seventyToEighty => 9_679_089
  | .eightyToHundred => 9_511_773
  | .hundredToHundredFifty => 9_127_671
  | .hundredFiftyToTwoHundred => 8_569_448

def fortyMillionTenBranchRootOddNumerator :
    FortyMillionTenBranchBlock -> Nat
  | .fortyToFifty => 10_396_089
  | .fiftyToSeventy => 9_926_965
  | .seventyToEighty => 9_335_765
  | .eightyToHundred => 9_134_226
  | .hundredToHundredFifty => 8_825_297
  | .hundredFiftyToTwoHundred => 8_368_371

def fortyMillionTenBranchRootEvenOne
    (block : FortyMillionTenBranchBlock) : Rat :=
  fortyMillionTenBranchRootEvenOneNumerator block / 1_000_000_000

def fortyMillionTenBranchRootEvenTwo
    (block : FortyMillionTenBranchBlock) : Rat :=
  fortyMillionTenBranchRootEvenTwoNumerator block / 1_000_000_000

def fortyMillionTenBranchRootEvenThree
    (block : FortyMillionTenBranchBlock) : Rat :=
  fortyMillionTenBranchRootEvenThreeNumerator block / 1_000_000_000

def fortyMillionTenBranchRootOdd
    (block : FortyMillionTenBranchBlock) : Rat :=
  fortyMillionTenBranchRootOddNumerator block / 1_000_000_000

def fortyMillionTenBranchResidualPayment
    (block : FortyMillionTenBranchBlock)
    (branch : TwentyMillionBranch) : Rat :=
  match branch with
  | .evenOneGeneric | .evenTwoGeneric =>
      fortyMillionTenBranchDiagonal block .unrestricted
  | .evenOneCommonThree =>
      fortyMillionTenBranchDiagonal block (.concentrated 0 0)
  | .evenTwoCommonThree =>
      fortyMillionTenBranchDiagonal block (.evenTwoCell 0) +
        fortyMillionTenBranchDelta block
  | .evenThreeGeneric | .evenThreeCommonThree =>
      fortyMillionTenBranchDiagonal block .lowTwoAdic +
        2 * fortyMillionTenBranchDelta block
  | .oddTwoGeneric =>
      fortyMillionTenBranchDiagonal block .oddUnion +
        3 * fortyMillionTenBranchDelta block
  | .oddTwoCommonThree =>
      fortyMillionTenBranchDiagonal block (.oddPlusCell false 0) +
        3 * fortyMillionTenBranchDelta block
  | .oddOneGeneric =>
      fortyMillionTenBranchDiagonal block (.oneOdd false) +
        3 * fortyMillionTenBranchDelta block
  | .oddOneCommonThree =>
      fortyMillionTenBranchDiagonal block (.oneOddCell false 0) +
        3 * fortyMillionTenBranchDelta block

def fortyMillionTenBranchFinitePayment : TwentyMillionBranch -> Rat
  | .evenOneGeneric | .evenTwoGeneric | .evenThreeGeneric =>
      8_685 / 1_000_000
  | .evenOneCommonThree | .evenTwoCommonThree |
      .evenThreeCommonThree => 12_616 / 1_000_000
  | .oddTwoGeneric => 19_420 / 1_000_000
  | .oddTwoCommonThree => 20_878 / 1_000_000
  | .oddOneGeneric => 26_643 / 1_000_000
  | .oddOneCommonThree => 29_459 / 1_000_000

def fortyMillionTenBranchTailPayment
    (block : FortyMillionTenBranchBlock)
    (branch : TwentyMillionBranch) : Rat :=
  match branch with
  | .evenOneGeneric | .evenOneCommonThree =>
      3 * fiveMillionSquareTail23Envelope / 25 +
        fortyMillionTenBranchRootEvenOne block / 2
  | .evenTwoGeneric | .evenTwoCommonThree =>
      3 * fiveMillionSquareTail23Envelope / 25 +
        fortyMillionTenBranchRootEvenTwo block / 2
  | .evenThreeGeneric | .evenThreeCommonThree =>
      3 * fiveMillionSquareTail23Envelope / 25 +
        fortyMillionTenBranchRootEvenThree block / 2
  | .oddTwoGeneric | .oddTwoCommonThree |
      .oddOneGeneric | .oddOneCommonThree =>
      twentyMillionSquareOdd + fortyMillionTenBranchRootOdd block / 2

def fortyMillionTenBranchTotal
    (block : FortyMillionTenBranchBlock)
    (branch : TwentyMillionBranch) : Rat :=
  fortyMillionTenBranchResidualPayment block branch +
    fortyMillionTenBranchFinitePayment branch +
      fortyMillionTenBranchTailPayment block branch

def fortyMillionTenBranchTarget
    (block : FortyMillionTenBranchBlock) : Rat :=
  1 / 25 - 7 / (25 * block.lower)

theorem fortyMillionTenBranchTotal_lt_target
    (block : FortyMillionTenBranchBlock)
    (branch : TwentyMillionBranch) :
    fortyMillionTenBranchTotal block branch <
      fortyMillionTenBranchTarget block := by
  cases block <;> cases branch <;>
    norm_num [fortyMillionTenBranchTotal,
      fortyMillionTenBranchResidualPayment,
      fortyMillionTenBranchFinitePayment,
      fortyMillionTenBranchTailPayment,
      fortyMillionTenBranchTarget,
      fortyMillionTenBranchDelta,
      fortyMillionTenBranchDiagonal,
      fortyMillionTenBranchRootEvenOne,
      fortyMillionTenBranchRootEvenTwo,
      fortyMillionTenBranchRootEvenThree,
      fortyMillionTenBranchRootOdd,
      fortyMillionTenBranchRootEvenOneNumerator,
      fortyMillionTenBranchRootEvenTwoNumerator,
      fortyMillionTenBranchRootEvenThreeNumerator,
      fortyMillionTenBranchRootOddNumerator,
      FortyMillionTenBranchBlock.lower,
      FortyMillionTenBranchBlock.regime,
      PaperDiagonalRegime.envelopeNumerator,
      fiveMillionSquareTail23Envelope,
      twentyMillionSquareOdd]

theorem fortyMillionTenBranchTarget_le_normalizedTarget
    {block : FortyMillionTenBranchBlock} {N : Nat}
    (hcover : block.Covers N) :
    fortyMillionTenBranchTarget block <= twentyMillionHallTarget N := by
  have hLowerQ : (block.lower : Rat) <= N := by
    exact_mod_cast hcover.1
  have hLowerPos : (0 : Rat) < block.lower := by
    cases block <;>
      norm_num [FortyMillionTenBranchBlock.lower]
  have hNPos : (0 : Rat) < N := hLowerPos.trans_le hLowerQ
  unfold fortyMillionTenBranchTarget twentyMillionHallTarget
  have hDenLowerPos : (0 : Rat) < 25 * block.lower := by
    positivity
  have hDenLe : (25 : Rat) * block.lower <= 25 * N := by
    exact mul_le_mul_of_nonneg_left hLowerQ (by norm_num)
  have hFrac : (7 : Rat) / (25 * N) <= 7 / (25 * block.lower) :=
    div_le_div_of_nonneg_left (by norm_num) hDenLowerPos hDenLe
  linarith

#print axioms fortyMillionTenBranchTotal_lt_target
#print axioms fortyMillionTenBranchTarget_le_normalizedTarget

end Erdos848
