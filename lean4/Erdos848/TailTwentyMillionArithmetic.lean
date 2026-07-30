import Erdos848.HallReduction

namespace Erdos848

/-!
# Exact arithmetic close for the twenty-million valuation block

This file records the ten exact rational rows produced by
`systematic_mixed_valuation_20m_close.py` after auditing its support endpoint
at `40_000_000`.  It contains no floating-point arithmetic: every decimal
ceiling in the paper is represented by the corresponding rational number.

The theorem `twentyMillionBranch_total_lt_target` is the terminal arithmetic
step common to every branch on `20_000_000 ≤ N < 40_000_000`.  The separate
finite-sieve, root-profile, diagonal, and Hall-semantic certificates that feed
these rows must still be connected before this interval itself is kernel
closed.
-/

/-- The ten exhaustive valuation/parity rows in the twenty-million block. -/
inductive TwentyMillionBranch where
  | evenOneGeneric
  | evenOneCommonThree
  | evenTwoGeneric
  | evenTwoCommonThree
  | evenThreeGeneric
  | evenThreeCommonThree
  | oddTwoGeneric
  | oddTwoCommonThree
  | oddOneGeneric
  | oddOneCommonThree
  deriving DecidableEq, Repr

def twentyMillionLower : ℕ := 20_000_000
def twentyMillionUpper : ℕ := 40_000_000

/-- The normalized Hall target at an arbitrary point in the interval. -/
def twentyMillionHallTarget (N : ℕ) : ℚ :=
  1 / 25 - 7 / (25 * (N : ℚ))

/-- The normalized Hall target at the lower endpoint `N = 20_000_000`. -/
def twentyMillionTarget : ℚ :=
  twentyMillionHallTarget twentyMillionLower

/-- Raw charge for one sparse valuation class. -/
def twentyMillionDelta : ℚ :=
  20_020_001 / 400_020_000_000

/-- Raw charge for the three even valuation classes. -/
def twentyMillionEvenCharge : ℚ :=
  20_020_001 / 133_340_000_000

def twentyMillionSquareEven : ℚ :=
  11_661 / 25_000_000

def twentyMillionSquareOdd : ℚ :=
  124_487_826_292_585_911_291_592_581 /
    100_465_940_172_201_877_143_025_000_000

def twentyMillionFiniteEvenGeneric : ℚ :=
  1_572_362_642_548_502_371_982_744_227_834_515_457 /
    171_081_196_711_186_531_200_844_968_164_610_000_000

def twentyMillionFiniteEvenCommonThree : ℚ :=
  95_420_198_880_973_660_613_554_087_255_708_204_331 /
    7_561_788_894_634_444_679_077_347_592_875_762_000_000

def twentyMillionFiniteOddTwo : ℚ :=
  104_536_225_239_819 / 5_025_853_958_125_000

def twentyMillionFiniteOddTwoCommonThree : ℚ :=
  198_253_619_941_806_029 / 9_408_398_609_610_000_000

def twentyMillionFiniteOddOne : ℚ :=
  501_214_438_705_111_459 / 18_816_797_219_220_000_000

def twentyMillionFiniteOddOneCommonThree : ℚ :=
  544_824_116_553_679_621 / 18_816_797_219_220_000_000

def twentyMillionDiagonalUnrestricted : ℚ := 25_289_550 / 1_000_000_000
def twentyMillionDiagonalConcentrated : ℚ := 19_671_796 / 1_000_000_000
def twentyMillionDiagonalLowTwoAdic : ℚ := 15_806_240 / 1_000_000_000
def twentyMillionDiagonalEvenTwoCell : ℚ := 16_158_563 / 1_000_000_000
def twentyMillionDiagonalOddUnion : ℚ := 12_646_194 / 1_000_000_000
def twentyMillionDiagonalOddPlusCell : ℚ := 7_027_715 / 1_000_000_000
def twentyMillionDiagonalOneOdd : ℚ := 6_323_839 / 1_000_000_000
def twentyMillionDiagonalOneOddCell : ℚ := 705_249 / 1_000_000_000

/-- Root ceilings recomputed over the full support endpoint `40_000_000`. -/
def twentyMillionRootEvenOne : ℚ := 8_622_089 / 1_000_000_000
def twentyMillionRootEvenTwo : ℚ := 10_006_474 / 1_000_000_000
def twentyMillionRootEvenThree : ℚ := 12_915_119 / 1_000_000_000
def twentyMillionRootOdd : ℚ := 10_177_869 / 1_000_000_000

/-- Exact normalized payment in each of the ten terminal rows. -/
def twentyMillionBranchTotal : TwentyMillionBranch → ℚ
  | .evenOneGeneric =>
      twentyMillionDiagonalUnrestricted + twentyMillionFiniteEvenGeneric +
        twentyMillionSquareEven + twentyMillionRootEvenOne / 2
  | .evenOneCommonThree =>
      twentyMillionDiagonalConcentrated + twentyMillionFiniteEvenCommonThree +
        twentyMillionSquareEven + twentyMillionRootEvenOne / 2
  | .evenTwoGeneric =>
      twentyMillionDiagonalUnrestricted + twentyMillionFiniteEvenGeneric +
        twentyMillionSquareEven + twentyMillionRootEvenTwo / 2
  | .evenTwoCommonThree =>
      twentyMillionDiagonalEvenTwoCell + twentyMillionDelta +
        twentyMillionFiniteEvenCommonThree + twentyMillionSquareEven +
        twentyMillionRootEvenTwo / 2
  | .evenThreeGeneric =>
      twentyMillionDiagonalLowTwoAdic + 2 * twentyMillionDelta +
        twentyMillionFiniteEvenGeneric + twentyMillionSquareEven +
        twentyMillionRootEvenThree / 2
  | .evenThreeCommonThree =>
      twentyMillionDiagonalLowTwoAdic + 2 * twentyMillionDelta +
        twentyMillionFiniteEvenCommonThree + twentyMillionSquareEven +
        twentyMillionRootEvenThree / 2
  | .oddTwoGeneric =>
      twentyMillionDiagonalOddUnion + twentyMillionEvenCharge +
        twentyMillionFiniteOddTwo + twentyMillionSquareOdd +
        twentyMillionRootOdd / 2
  | .oddTwoCommonThree =>
      twentyMillionDiagonalOddPlusCell + twentyMillionEvenCharge +
        twentyMillionFiniteOddTwoCommonThree + twentyMillionSquareOdd +
        twentyMillionRootOdd / 2
  | .oddOneGeneric =>
      twentyMillionDiagonalOneOdd + twentyMillionEvenCharge +
        twentyMillionFiniteOddOne + twentyMillionSquareOdd +
        twentyMillionRootOdd / 2
  | .oddOneCommonThree =>
      twentyMillionDiagonalOneOddCell + twentyMillionEvenCharge +
        twentyMillionFiniteOddOneCommonThree + twentyMillionSquareOdd +
        twentyMillionRootOdd / 2

/-- The controlling row after including the rigorous reciprocal-mass
correction in the transformed-root envelopes. -/
theorem twentyMillionEvenTwoGeneric_lt_target :
    twentyMillionBranchTotal .evenTwoGeneric < twentyMillionTarget := by
  norm_num [twentyMillionBranchTotal, twentyMillionTarget,
    twentyMillionHallTarget, twentyMillionLower,
    twentyMillionDiagonalUnrestricted,
    twentyMillionFiniteEvenGeneric, twentyMillionSquareEven,
    twentyMillionRootEvenTwo]

/-- Arithmetic maximality of the controlling row among the ten rows.  This
does not replace the semantic proof that the ten rows exhaust Hall defects. -/
theorem twentyMillionBranchTotal_le_evenTwoGeneric
    (branch : TwentyMillionBranch) :
    twentyMillionBranchTotal branch ≤
      twentyMillionBranchTotal .evenTwoGeneric := by
  cases branch <;>
    norm_num [twentyMillionBranchTotal,
      twentyMillionDelta, twentyMillionEvenCharge,
      twentyMillionSquareEven, twentyMillionSquareOdd,
      twentyMillionFiniteEvenGeneric, twentyMillionFiniteEvenCommonThree,
      twentyMillionFiniteOddTwo, twentyMillionFiniteOddTwoCommonThree,
      twentyMillionFiniteOddOne, twentyMillionFiniteOddOneCommonThree,
      twentyMillionDiagonalUnrestricted, twentyMillionDiagonalConcentrated,
      twentyMillionDiagonalLowTwoAdic, twentyMillionDiagonalEvenTwoCell,
      twentyMillionDiagonalOddUnion, twentyMillionDiagonalOddPlusCell,
      twentyMillionDiagonalOneOdd, twentyMillionDiagonalOneOddCell,
      twentyMillionRootEvenOne, twentyMillionRootEvenTwo,
      twentyMillionRootEvenThree, twentyMillionRootOdd]

/-- Every terminal row lies strictly below the lower-endpoint Hall target. -/
theorem twentyMillionBranch_total_lt_target (branch : TwentyMillionBranch) :
    twentyMillionBranchTotal branch < twentyMillionTarget := by
  cases branch <;>
    norm_num [twentyMillionBranchTotal, twentyMillionTarget,
      twentyMillionHallTarget, twentyMillionLower,
      twentyMillionDelta, twentyMillionEvenCharge,
      twentyMillionSquareEven, twentyMillionSquareOdd,
      twentyMillionFiniteEvenGeneric, twentyMillionFiniteEvenCommonThree,
      twentyMillionFiniteOddTwo, twentyMillionFiniteOddTwoCommonThree,
      twentyMillionFiniteOddOne, twentyMillionFiniteOddOneCommonThree,
      twentyMillionDiagonalUnrestricted, twentyMillionDiagonalConcentrated,
      twentyMillionDiagonalLowTwoAdic, twentyMillionDiagonalEvenTwoCell,
      twentyMillionDiagonalOddUnion, twentyMillionDiagonalOddPlusCell,
      twentyMillionDiagonalOneOdd, twentyMillionDiagonalOneOddCell,
      twentyMillionRootEvenOne, twentyMillionRootEvenTwo,
      twentyMillionRootEvenThree, twentyMillionRootOdd]

/-- The normalized Hall target can only increase after the lower endpoint. -/
theorem twentyMillionTarget_le_normalizedTarget {N : ℕ}
    (hN : 20_000_000 ≤ N) :
    twentyMillionTarget ≤ twentyMillionHallTarget N := by
  have hNQ : (20_000_000 : ℚ) ≤ (N : ℚ) := by
    exact_mod_cast hN
  have hNpos : 0 < (N : ℚ) := lt_of_lt_of_le (by norm_num) hNQ
  have hdenN : 0 < 25 * (N : ℚ) := mul_pos (by norm_num) hNpos
  have hdenLower : 0 < (25 : ℚ) * 20_000_000 := by norm_num
  have hdiv :
      7 / (25 * (N : ℚ)) ≤ 7 / ((25 : ℚ) * 20_000_000) := by
    apply (div_le_div_iff₀ hdenN hdenLower).2
    nlinarith
  rw [twentyMillionTarget, twentyMillionHallTarget, twentyMillionLower]
  exact sub_le_sub_left hdiv (1 / 25)

/-! ## Static map of the remaining producer obligations

The following range-bound types make the corrected endpoint explicit without
pretending that the Python functions are already Lean definitions.  A kernel
producer must instantiate `actualPayment` with the formal transformed-root or
diagonal quantity and prove the corresponding range bound.
-/

inductive TwentyMillionRootClass where
  | evenOne
  | evenTwo
  | evenThree
  | odd
  deriving DecidableEq, Repr

def twentyMillionRootEnvelope : TwentyMillionRootClass → ℚ
  | .evenOne => twentyMillionRootEvenOne
  | .evenTwo => twentyMillionRootEvenTwo
  | .evenThree => twentyMillionRootEvenThree
  | .odd => twentyMillionRootOdd

/-- Exact target type for the four corrected transformed-root producers. -/
def TwentyMillionRootRangeBound
    (actualPayment : TwentyMillionRootClass → ℕ → ℚ) : Prop :=
  ∀ rootClass N,
    twentyMillionLower ≤ N → N < twentyMillionUpper →
      actualPayment rootClass N ≤ twentyMillionRootEnvelope rootClass

inductive TwentyMillionDiagonalClass where
  | unrestricted
  | concentrated
  | lowTwoAdic
  | evenTwoCell
  | oddUnion
  | oddPlusCell
  | oneOdd
  | oneOddCell
  deriving DecidableEq, Repr

def twentyMillionDiagonalEnvelope : TwentyMillionDiagonalClass → ℚ
  | .unrestricted => twentyMillionDiagonalUnrestricted
  | .concentrated => twentyMillionDiagonalConcentrated
  | .lowTwoAdic => twentyMillionDiagonalLowTwoAdic
  | .evenTwoCell => twentyMillionDiagonalEvenTwoCell
  | .oddUnion => twentyMillionDiagonalOddUnion
  | .oddPlusCell => twentyMillionDiagonalOddPlusCell
  | .oneOdd => twentyMillionDiagonalOneOdd
  | .oneOddCell => twentyMillionDiagonalOneOddCell

/-- Exact target type for the eight eventwise diagonal maxima.  The producer
has to prove the bound for every `N` in the whole interval, not only for the
block endpoints at which it reports a maximum. -/
def TwentyMillionDiagonalRangeBound
    (actualPayment : TwentyMillionDiagonalClass → ℕ → ℚ) : Prop :=
  ∀ diagonalClass N,
    twentyMillionLower ≤ N → N < twentyMillionUpper →
      actualPayment diagonalClass N ≤
        twentyMillionDiagonalEnvelope diagonalClass

/-! ## Exact Hall bridge and minimal remaining interval theorem -/

/-- A normalized bound for the actual Hall completion implies the literal
integer Hall inequality. -/
theorem twentyMillionHall_of_ratio_le_target
    {N : ℕ} (hN : 0 < N) {B : Finset ℕ}
    (hBout : Erdos848OutsideSet N B)
    (hRatio : ((hallCompletion N B).card : ℚ) / N ≤
      twentyMillionHallTarget N) :
    B.card + (hallNonNeighbours N B).card ≤ (OriginalA7 N).card := by
  have hNq : (0 : ℚ) < N := by exact_mod_cast hN
  have hscaled :
      ((hallCompletion N B).card : ℚ) ≤ (N : ℚ) / 25 - 7 / 25 := by
    have hmul := (div_le_iff₀ hNq).mp hRatio
    calc
      ((hallCompletion N B).card : ℚ) ≤
          twentyMillionHallTarget N * N := hmul
      _ = (N : ℚ) / 25 - 7 / 25 := by
        simp only [twentyMillionHallTarget]
        field_simp [ne_of_gt hNq]
  have hcast :
      ((hallCompletion N B).card : ℚ) ≤
        ((OriginalA7 N).card : ℚ) :=
    hscaled.trans (originalA7_card_cast_lower N)
  have hnat : (hallCompletion N B).card ≤ (OriginalA7 N).card := by
    exact_mod_cast hcast
  rw [hallCompletion_card hBout] at hnat
  exact hnat

/-- The minimal semantic obligation left after the ten arithmetic rows.  This
is deliberately named `BranchExhaustion`, not `Close`: it must be proved from
the degree, finite-sieve, corrected root, square-tail, diagonal-maximality and
valuation-allocation certificates for the *actual* Hall completion. -/
def Erdos848TwentyMillionBranchExhaustion : Prop :=
  ∀ N, twentyMillionLower ≤ N → N < twentyMillionUpper →
    ∀ B : Finset ℕ, Erdos848OutsideSet N B →
      NonSquarefreeProductProp B →
      (OriginalA7 N).card <
        B.card + (hallNonNeighbours N B).card →
      ∃ branch : TwentyMillionBranch,
        ((hallCompletion N B).card : ℚ) / N ≤
          twentyMillionBranchTotal branch

def Erdos848TwentyMillionClose : Prop :=
  ∀ N, twentyMillionLower ≤ N → N < twentyMillionUpper →
    OriginalProblem848Statement N

/-- Assembly only: this theorem does not assert branch exhaustion. -/
theorem erdos848TwentyMillionClose_of_branchExhaustion
    (hexhaustive : Erdos848TwentyMillionBranchExhaustion) :
    Erdos848TwentyMillionClose := by
  intro N hLower hUpper
  apply originalProblem_of_hallStatement
  intro B hBout hBprop
  by_contra hnotHall
  have hdefect : (OriginalA7 N).card <
      B.card + (hallNonNeighbours N B).card := by omega
  obtain ⟨branch, hbranch⟩ :=
    hexhaustive N hLower hUpper B hBout hBprop hdefect
  have htarget :
      ((hallCompletion N B).card : ℚ) / N ≤
        twentyMillionHallTarget N := by
    exact hbranch.trans <|
      (le_of_lt (twentyMillionBranch_total_lt_target branch)).trans <|
        twentyMillionTarget_le_normalizedTarget (by
          simpa [twentyMillionLower] using hLower)
  have hHall := twentyMillionHall_of_ratio_le_target
    (lt_of_lt_of_le (by norm_num [twentyMillionLower]) hLower) hBout htarget
  omega

end Erdos848
