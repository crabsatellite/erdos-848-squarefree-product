import Erdos848.TailMixedHall

namespace Erdos848

/-!
## Exact terminal budget for `40,000,000 ≤ N < 200,000,000`

The six rows and six product blocks are exactly those of
`mixed-joint-tail-close` in the archived TeX proof.  This file turns the
displayed outward-rounded totals into a small kernel theorem and fixes the
precise producer interface still required from the finite/root/diagonal
certificates.  It neither moves the Hall cut nor hides an asymptotic premise.
-/

inductive MixedJointBranch
  | evenGeneric
  | evenConcentrated
  | oddTwo
  | oddTwoCommonThree
  | oddOne
  | oddOneCommonTwoThree
  deriving DecidableEq, Fintype

inductive MixedJointBlock
  | fortyToFifty
  | fiftyToSeventy
  | seventyToEighty
  | eightyToHundred
  | hundredToHundredFifty
  | hundredFiftyToTwoHundred
  deriving DecidableEq, Fintype

def MixedJointBlock.lower : MixedJointBlock → ℕ
  | .fortyToFifty => 40_000_000
  | .fiftyToSeventy => 50_000_000
  | .seventyToEighty => 70_000_000
  | .eightyToHundred => 80_000_000
  | .hundredToHundredFifty => 100_000_000
  | .hundredFiftyToTwoHundred => 150_000_000

def MixedJointBlock.upper : MixedJointBlock → ℕ
  | .fortyToFifty => 50_000_000
  | .fiftyToSeventy => 70_000_000
  | .seventyToEighty => 80_000_000
  | .eightyToHundred => 100_000_000
  | .hundredToHundredFifty => 150_000_000
  | .hundredFiftyToTwoHundred => 200_000_000

def MixedJointBlock.Covers (block : MixedJointBlock) (N : ℕ) : Prop :=
  block.lower ≤ N ∧ N < block.upper

/-- Outward-rounded upper totals from the 36 terminal rows.  Denominator
`10^9` makes the table an exact rational object inside the kernel. -/
def mixedJointTotalUpper : MixedJointBlock → MixedJointBranch → ℚ
  | .fortyToFifty, .evenGeneric => 39_900_887 / 1_000_000_000
  | .fortyToFifty, .evenConcentrated => 37_719_304 / 1_000_000_000
  | .fortyToFifty, .oddTwo => 39_010_245 / 1_000_000_000
  | .fortyToFifty, .oddTwoCommonThree => 39_043_716 / 1_000_000_000
  | .fortyToFifty, .oddOne => 38_189_422 / 1_000_000_000
  | .fortyToFifty, .oddOneCommonTwoThree => 34_945_203 / 1_000_000_000
  | .fiftyToSeventy, .evenGeneric => 39_410_355 / 1_000_000_000
  | .fiftyToSeventy, .evenConcentrated => 37_230_490 / 1_000_000_000
  | .fiftyToSeventy, .oddTwo => 38_649_860 / 1_000_000_000
  | .fiftyToSeventy, .oddTwoCommonThree => 38_685_821 / 1_000_000_000
  | .fiftyToSeventy, .oddOne => 37_827_246 / 1_000_000_000
  | .fiftyToSeventy, .oddOneCommonTwoThree => 34_587_594 / 1_000_000_000
  | .seventyToEighty, .evenGeneric => 38_783_187 / 1_000_000_000
  | .seventyToEighty, .evenConcentrated => 36_605_543 / 1_000_000_000
  | .seventyToEighty, .oddTwo => 38_355_344 / 1_000_000_000
  | .seventyToEighty, .oddTwoCommonThree => 38_394_151 / 1_000_000_000
  | .seventyToEighty, .oddOne => 37_531_094 / 1_000_000_000
  | .seventyToEighty, .oddOneCommonTwoThree => 34_296_955 / 1_000_000_000
  | .eightyToHundred, .evenGeneric => 39_536_797 / 1_000_000_000
  | .eightyToHundred, .evenConcentrated => 37_359_591 / 1_000_000_000
  | .eightyToHundred, .oddTwo => 39_804_221 / 1_000_000_000
  | .eightyToHundred, .oddTwoCommonThree => 39_843_917 / 1_000_000_000
  | .eightyToHundred, .oddOne => 38_979_420 / 1_000_000_000
  | .eightyToHundred, .oddOneCommonTwoThree => 35_747_537 / 1_000_000_000
  | .hundredToHundredFifty, .evenGeneric => 39_145_265 / 1_000_000_000
  | .hundredToHundredFifty, .evenConcentrated => 36_969_147 / 1_000_000_000
  | .hundredToHundredFifty, .oddTwo => 39_407_439 / 1_000_000_000
  | .hundredToHundredFifty, .oddTwoCommonThree => 39_448_380 / 1_000_000_000
  | .hundredToHundredFifty, .oddOne => 38_581_820 / 1_000_000_000
  | .hundredToHundredFifty, .oddOneCommonTwoThree => 35_352_178 / 1_000_000_000
  | .hundredFiftyToTwoHundred, .evenGeneric => 38_480_410 / 1_000_000_000
  | .hundredFiftyToTwoHundred, .evenConcentrated => 36_305_374 / 1_000_000_000
  | .hundredFiftyToTwoHundred, .oddTwo => 38_735_247 / 1_000_000_000
  | .hundredFiftyToTwoHundred, .oddTwoCommonThree => 38_777_848 / 1_000_000_000
  | .hundredFiftyToTwoHundred, .oddOne => 37_908_532 / 1_000_000_000
  | .hundredFiftyToTwoHundred, .oddOneCommonTwoThree => 34_682_188 / 1_000_000_000

def mixedJointDiagonalUpper : MixedJointBlock → MixedJointBranch → ℚ
  | .fortyToFifty, .evenGeneric => 25_288_306 / 1_000_000_000
  | .fortyToFifty, .evenConcentrated => 19_669_629 / 1_000_000_000
  | .fortyToFifty, .oddTwo => 12_644_928 / 1_000_000_000
  | .fortyToFifty, .oddTwoCommonThree => 12_644_928 / 1_000_000_000
  | .fortyToFifty, .oddOne => 6_323_387 / 1_000_000_000
  | .fortyToFifty, .oddOneCommonTwoThree => 704_922 / 1_000_000_000
  | .fiftyToSeventy, .evenGeneric => 25_289_177 / 1_000_000_000
  | .fiftyToSeventy, .evenConcentrated => 19_670_398 / 1_000_000_000
  | .fiftyToSeventy, .oddTwo => 12_645_934 / 1_000_000_000
  | .fiftyToSeventy, .oddTwoCommonThree => 12_645_934 / 1_000_000_000
  | .fiftyToSeventy, .oddOne => 6_324_212 / 1_000_000_000
  | .fiftyToSeventy, .oddOneCommonTwoThree => 705_254 / 1_000_000_000
  | .seventyToEighty, .evenGeneric => 25_289_195 / 1_000_000_000
  | .seventyToEighty, .evenConcentrated => 19_670_557 / 1_000_000_000
  | .seventyToEighty, .oddTwo => 12_646_195 / 1_000_000_000
  | .seventyToEighty, .oddTwoCommonThree => 12_646_195 / 1_000_000_000
  | .seventyToEighty, .oddOne => 6_324_677 / 1_000_000_000
  | .seventyToEighty, .oddOneCommonTwoThree => 705_450 / 1_000_000_000
  | .eightyToHundred, .evenGeneric => 25_289_763 / 1_000_000_000
  | .eightyToHundred, .evenConcentrated => 19_670_912 / 1_000_000_000
  | .eightyToHundred, .oddTwo => 12_646_399 / 1_000_000_000
  | .eightyToHundred, .oddTwoCommonThree => 12_646_399 / 1_000_000_000
  | .eightyToHundred, .oddOne => 6_324_905 / 1_000_000_000
  | .eightyToHundred, .oddOneCommonTwoThree => 706_127 / 1_000_000_000
  | .hundredToHundredFifty, .evenGeneric => 25_291_155 / 1_000_000_000
  | .hundredToHundredFifty, .evenConcentrated => 19_672_482 / 1_000_000_000
  | .hundredToHundredFifty, .oddTwo => 12_648_139 / 1_000_000_000
  | .hundredToHundredFifty, .oddTwoCommonThree => 12_648_139 / 1_000_000_000
  | .hundredToHundredFifty, .oddOne => 6_326_632 / 1_000_000_000
  | .hundredToHundredFifty, .oddOneCommonTwoThree => 707_564 / 1_000_000_000
  | .hundredFiftyToTwoHundred, .evenGeneric => 25_292_702 / 1_000_000_000
  | .hundredFiftyToTwoHundred, .evenConcentrated => 19_673_898 / 1_000_000_000
  | .hundredFiftyToTwoHundred, .oddTwo => 12_649_812 / 1_000_000_000
  | .hundredFiftyToTwoHundred, .oddTwoCommonThree => 12_649_812 / 1_000_000_000
  | .hundredFiftyToTwoHundred, .oddOne => 6_328_282 / 1_000_000_000
  | .hundredFiftyToTwoHundred, .oddOneCommonTwoThree => 709_139 / 1_000_000_000

def mixedJointRootUpper : MixedJointBlock → MixedJointBranch → ℚ
  | .fortyToFifty, .evenGeneric | .fortyToFifty, .evenConcentrated =>
      10_154_502 / 1_000_000_000
  | .fortyToFifty, _ => 7_782_425 / 1_000_000_000
  | .fiftyToSeventy, .evenGeneric | .fiftyToSeventy, .evenConcentrated =>
      9_220_436 / 1_000_000_000
  | .fiftyToSeventy, _ => 7_130_773 / 1_000_000_000
  | .seventyToEighty, .evenGeneric | .seventyToEighty, .evenConcentrated =>
      8_021_767 / 1_000_000_000
  | .seventyToEighty, _ => 6_622_510 / 1_000_000_000
  | .eightyToHundred, _ => 9_545_259 / 1_000_000_000
  | .hundredToHundredFifty, _ => 8_783_781 / 1_000_000_000
  | .hundredFiftyToTwoHundred, _ => 7_483_471 / 1_000_000_000

def mixedJointChargeUpper : MixedJointBranch → ℚ
  | .evenGeneric | .evenConcentrated => 0
  | _ => 150_000 / 1_000_000_000

def mixedJointSquareTailUpper : ℚ := 466_440 / 1_000_000_000

/-- The remaining finite-sieve allowance after reserving the independently
checked diagonal, root, square-tail, and charge ceilings. -/
def mixedJointFiniteUpper
    (block : MixedJointBlock) (branch : MixedJointBranch) : ℚ :=
  mixedJointTotalUpper block branch - mixedJointDiagonalUpper block branch -
    mixedJointChargeUpper branch - mixedJointSquareTailUpper -
    mixedJointRootUpper block branch / 2

theorem mixedJoint_component_sum_eq_total
    (block : MixedJointBlock) (branch : MixedJointBranch) :
    mixedJointDiagonalUpper block branch + mixedJointFiniteUpper block branch +
        mixedJointSquareTailUpper + mixedJointRootUpper block branch / 2 +
        mixedJointChargeUpper branch =
      mixedJointTotalUpper block branch := by
  unfold mixedJointFiniteUpper
  ring

theorem mixedJointFiniteUpper_nonneg
    (block : MixedJointBlock) (branch : MixedJointBranch) :
    0 ≤ mixedJointFiniteUpper block branch := by
  cases block <;> cases branch <;>
    norm_num [mixedJointFiniteUpper, mixedJointTotalUpper,
      mixedJointDiagonalUpper, mixedJointChargeUpper,
      mixedJointSquareTailUpper, mixedJointRootUpper]

/-- The six blocks cover the whole mixed-joint interval, with no finite gap
and no appeal to a generated certificate. -/
theorem exists_mixedJointBlock {N : ℕ}
    (hlower : 40_000_000 ≤ N) (hupper : N < 200_000_000) :
    ∃ block : MixedJointBlock, block.Covers N := by
  by_cases h₀ : N < 50_000_000
  · exact ⟨.fortyToFifty, hlower, h₀⟩
  by_cases h₁ : N < 70_000_000
  · exact ⟨.fiftyToSeventy, Nat.le_of_not_gt h₀, h₁⟩
  by_cases h₂ : N < 80_000_000
  · exact ⟨.seventyToEighty, Nat.le_of_not_gt h₁, h₂⟩
  by_cases h₃ : N < 100_000_000
  · exact ⟨.eightyToHundred, Nat.le_of_not_gt h₂, h₃⟩
  by_cases h₄ : N < 150_000_000
  · exact ⟨.hundredToHundredFifty, Nat.le_of_not_gt h₃, h₄⟩
  · exact ⟨.hundredFiftyToTwoHundred, Nat.le_of_not_gt h₄, hupper⟩

/-- Every displayed total is strictly below the exact target at the left
endpoint of its block. -/
theorem mixedJointTotalUpper_lt_lowerTarget
    (block : MixedJointBlock) (branch : MixedJointBranch) :
    mixedJointTotalUpper block branch <
      (1 : ℚ) / 25 - 7 / (25 * block.lower) := by
  cases block <;> cases branch <;>
    norm_num [mixedJointTotalUpper, MixedJointBlock.lower]

/-- The left-endpoint strict budget remains valid for every `N` in the
block, in the unnormalised cardinality form consumed by `HallReduction`. -/
theorem mixedJointTotalUpper_mul_lt_target
    {N : ℕ} (block : MixedJointBlock) (branch : MixedJointBranch)
    (hcover : block.Covers N) :
    mixedJointTotalUpper block branch * (N : ℚ) <
      (N : ℚ) / 25 - 7 / 25 := by
  let x : ℚ := N
  change mixedJointTotalUpper block branch * x < x / 25 - 7 / 25
  have hlowerQ : (block.lower : ℚ) ≤ x := by
    dsimp [x]
    exact_mod_cast hcover.1
  cases block <;> cases branch <;>
    norm_num [mixedJointTotalUpper, MixedJointBlock.lower] at hlowerQ ⊢ <;>
    ring_nf at hlowerQ ⊢ <;>
    linarith

/-- One checked terminal row closes the literal Hall inequality for that
outside compatible set.  The sole producer obligation is the direct
completion-card bound; all target arithmetic is discharged above. -/
theorem hall_bound_of_mixedJoint_row
    {N : ℕ} {B : Finset ℕ}
    (hBout : Erdos848OutsideSet N B)
    (block : MixedJointBlock) (branch : MixedJointBranch)
    (hcover : block.Covers N)
    (hrow : ((hallCompletion N B).card : ℚ) ≤
      mixedJointTotalUpper block branch * (N : ℚ)) :
    B.card + (hallNonNeighbours N B).card ≤ (OriginalA7 N).card := by
  apply hall_bound_of_completion_cast_lt_target_tail hBout
  exact hrow.trans_lt (mixedJointTotalUpper_mul_lt_target block branch hcover)

/-- Parallel producer payload for one terminal row.  Each numerical
mechanism can be established independently; this structure contains only the
five bounds and the direct combinatorial inequality that combines their
actual payments. -/
structure MixedJointComponentCertificate (N : ℕ) (B : Finset ℕ) where
  block : MixedJointBlock
  branch : MixedJointBranch
  covers : block.Covers N
  diagonal : ℚ
  finitePayment : ℚ
  squareTail : ℚ
  root : ℚ
  charge : ℚ
  completionBound : ((hallCompletion N B).card : ℚ) ≤
    (diagonal + finitePayment + squareTail + root / 2 + charge) * (N : ℚ)
  diagonalBound : diagonal ≤ mixedJointDiagonalUpper block branch
  finiteBound : finitePayment ≤ mixedJointFiniteUpper block branch
  squareTailBound : squareTail ≤ mixedJointSquareTailUpper
  rootBound : root ≤ mixedJointRootUpper block branch
  chargeBound : charge ≤ mixedJointChargeUpper branch

theorem MixedJointComponentCertificate.row_bound
    {N : ℕ} {B : Finset ℕ}
    (certificate : MixedJointComponentCertificate N B) :
    ((hallCompletion N B).card : ℚ) ≤
      mixedJointTotalUpper certificate.block certificate.branch * (N : ℚ) := by
  have hsum :
      certificate.diagonal + certificate.finitePayment + certificate.squareTail +
          certificate.root / 2 + certificate.charge ≤
        mixedJointDiagonalUpper certificate.block certificate.branch +
          mixedJointFiniteUpper certificate.block certificate.branch +
          mixedJointSquareTailUpper +
          mixedJointRootUpper certificate.block certificate.branch / 2 +
          mixedJointChargeUpper certificate.branch := by
    linarith [certificate.diagonalBound, certificate.finiteBound,
      certificate.squareTailBound, certificate.rootBound,
      certificate.chargeBound]
  have hN : (0 : ℚ) ≤ N := by positivity
  have hmul := mul_le_mul_of_nonneg_right hsum hN
  rw [mixedJoint_component_sum_eq_total] at hmul
  exact certificate.completionBound.trans hmul

theorem hall_bound_of_mixedJoint_components
    {N : ℕ} {B : Finset ℕ}
    (hBout : Erdos848OutsideSet N B)
    (certificate : MixedJointComponentCertificate N B) :
    B.card + (hallNonNeighbours N B).card ≤ (OriginalA7 N).card := by
  exact hall_bound_of_mixedJoint_row hBout certificate.block certificate.branch
    certificate.covers certificate.row_bound

/-- Exact aggregate producer type for the six-way mixed argument.  A proof
of this proposition must supply a concrete block and terminal branch for
every alleged Hall defect and prove the actual completion bound. -/
def MixedJointFortyToTwoHundredKernelEvidence : Prop :=
  ∀ N, 40_000_000 ≤ N → N < 200_000_000 →
    ∀ B : Finset ℕ,
      Erdos848OutsideSet N B →
      NonSquarefreeProductProp B →
      (OriginalA7 N).card <
        B.card + (hallNonNeighbours N B).card →
      ∃ block : MixedJointBlock, ∃ branch : MixedJointBranch,
        block.Covers N ∧
        ((hallCompletion N B).card : ℚ) ≤
          mixedJointTotalUpper block branch * (N : ℚ)

/-- Granular form of the same evidence, intended for independently generated
component certificates. -/
def MixedJointFortyToTwoHundredComponentEvidence : Prop :=
  ∀ N, 40_000_000 ≤ N → N < 200_000_000 →
    ∀ B : Finset ℕ,
      Erdos848OutsideSet N B →
      NonSquarefreeProductProp B →
      (OriginalA7 N).card <
        B.card + (hallNonNeighbours N B).card →
      Nonempty (MixedJointComponentCertificate N B)

theorem mixedJointKernelEvidence_of_components
    (evidence : MixedJointFortyToTwoHundredComponentEvidence) :
    MixedJointFortyToTwoHundredKernelEvidence := by
  intro N hlower hupper B hBout hBprop hdefect
  obtain ⟨certificate⟩ :=
    evidence N hlower hupper B hBout hBprop hdefect
  exact ⟨certificate.block, certificate.branch, certificate.covers,
    certificate.row_bound⟩

/-- This is the exact close theorem for the middle part of
`mixed-joint-tail-close`: once the direct finite/root/diagonal evidence has
the preceding type, no further mathematical premise remains. -/
theorem erdos848_forty_to_two_hundred_of_kernelEvidence
    (evidence : MixedJointFortyToTwoHundredKernelEvidence) :
    ∀ N, 40_000_000 ≤ N → N < 200_000_000 →
      OriginalProblem848Statement N := by
  intro N hlower hupper
  apply originalProblem_of_hallStatement
  intro B hBout hBprop
  by_contra hnotHall
  have hdefect : (OriginalA7 N).card <
      B.card + (hallNonNeighbours N B).card := by omega
  obtain ⟨block, branch, hcover, hrow⟩ :=
    evidence N hlower hupper B hBout hBprop hdefect
  have hHall := hall_bound_of_mixedJoint_row
    hBout block branch hcover hrow
  omega

/-- Direct producer type for the earlier `actual-support-mixed-close` theorem.
It is kept separate so that the finite 40M--200M certificates cannot be
mistaken for a proof of the unbounded interval. -/
def ActualSupportTwoHundredMillionTailKernelClose : Prop :=
  ∀ N, 200_000_000 ≤ N → OriginalProblem848Statement N

/-- Exact assembly interface of Theorem `mixed-joint-tail-close`. -/
theorem erdos848_forty_million_tail_of_kernelEvidence
    (hmiddle : MixedJointFortyToTwoHundredKernelEvidence)
    (hhigh : ActualSupportTwoHundredMillionTailKernelClose) :
    ∀ N, 40_000_000 ≤ N → OriginalProblem848Statement N := by
  intro N hN
  by_cases hmiddleRange : N < 200_000_000
  · exact erdos848_forty_to_two_hundred_of_kernelEvidence hmiddle
      N hN hmiddleRange
  · exact hhigh N (Nat.le_of_not_gt hmiddleRange)

end Erdos848
