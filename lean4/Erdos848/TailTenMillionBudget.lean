import Erdos848.HallReduction

namespace Erdos848

/-!
# The ten-million tail block

This file kernelizes the exact rational budget in
`audit/systematic_mixed_cell_10m_close.py`.  It does **not** assume that the
producer's decimal output is a proof.  The thirteen terminal rows are exposed
separately, their rational arithmetic is checked by Lean, and the remaining
mathematical obligation is stated directly in terms of the actual Hall
completion.

Consequently, `Erdos848TenMillionBranchExhaustion` below is deliberately not
called a certificate or a close theorem.  Proving it requires the degree,
cell-selection, finite-sieve, transformed-root, square-tail, fibre, and
diagonal arguments from the paper.  Once it is proved, the final theorem in
this file closes the literal interval without changing the Hall cut.
-/

def tenMillionLower : ℕ := 10_000_000
def tenMillionUpper : ℕ := 20_000_000

/-- The normalized Hall target used throughout the archived tail proof. -/
def tenMillionHallTarget (N : ℕ) : ℚ :=
  1 / 25 - 7 / (25 * (N : ℚ))

/-! ## Exact producer inputs -/

def tenMillionCellCharge : ℚ :=
  1 / 1_000_001 + 1 / tenMillionLower

def tenMillionDiagonalUnrestricted : ℚ := 12_644_931 / 500_000_000
def tenMillionDiagonalConcentrated : ℚ := 19_674_183 / 1_000_000_000
def tenMillionDiagonalLowTwoAdic : ℚ := 494_013 / 31_250_000
def tenMillionDiagonalE2Cell : ℚ := 8_080_471 / 500_000_000
def tenMillionDiagonalOddUnion : ℚ := 3_161_981 / 250_000_000
def tenMillionDiagonalOneOdd : ℚ := 790_627 / 125_000_000
def tenMillionDiagonalOneOddCell : ℚ := 352_951 / 500_000_000

def tenMillionRootV1 : ℚ := 10_545_872 / 1_000_000_000
def tenMillionRootV2 : ℚ := 11_845_571 / 1_000_000_000
def tenMillionRootV3 : ℚ := 14_894_092 / 1_000_000_000
def tenMillionRootOdd7 : ℚ := 13_231_580 / 1_000_000_000
/-- The cutoff-17 rows deliberately reuse the uniform cutoff-7 envelope.
This avoids a second root certificate while retaining positive final slack. -/
def tenMillionRootOdd17 : ℚ := tenMillionRootOdd7

def tenMillionSquareTail7 : ℚ :=
  263_529_083_909_042_886_517_376_461_184_337_967 /
    8_573_456_796_637_692_379_906_289_787_841_000_000

def tenMillionSquareTail17 : ℚ :=
  18_998_672_704_095_913_077_809_307_247 /
    1_450_728_176_086_595_105_945_281_000_000

def tenMillionSquareTail29 : ℚ :=
  65_456_484_292_309_805_743 / 9_032_899_457_815_489_000_000

/-- Bonferroni density plus its integer endpoint payment at the lower end. -/
def tenMillionFinitePayment (density : ℚ) (endpoint : ℕ) : ℚ :=
  density / 25 + endpoint / tenMillionLower

/-- Four copies of a three-form Bonferroni row, with the paper's half weight
already simplified. -/
def tenMillionFourPayment (density : ℚ) (endpoint : ℕ) : ℚ :=
  4 * density / 25 + 4 * endpoint / tenMillionLower

def tenMillionEvenFourDensity : ℚ :=
  1_517_595_533_571_443 / 46_507_700_544_786_481
/-- Corrected endpoint allowance for the one-close-pair finite certificate. -/
def tenMillionEvenFourEndpoint : ℕ := 941

def tenMillionOddFourDensity : ℚ := 47 / 588
def tenMillionOddFourEndpoint : ℕ := 70

def tenMillionEvenCellDensity : ℚ := 13 / 49
def tenMillionEvenCellEndpoint : ℕ := 33

def tenMillionOddTwoCellDensity : ℚ := 853 / 1764
def tenMillionOddTwoCellEndpoint : ℕ := 114

def tenMillionOddOneCellDensity : ℚ := 103 / 147
def tenMillionOddOneCellEndpoint : ℕ := 87

def tenMillionHighNoneDensity : ℚ := 66_320_731 / 105_301_196
def tenMillionHighNoneEndpoint : ℕ := 2447

def tenMillionHigh7Density : ℚ := 6_635_808_983 / 10_424_818_404
def tenMillionHigh7Endpoint : ℕ := 1872

def tenMillionHigh11Density : ℚ := 253_501_165 / 400_954_554
def tenMillionHigh11Endpoint : ℕ := 1839

def tenMillionHigh13Density : ℚ := 3_291_717_217 / 5_212_409_202
def tenMillionHigh13Endpoint : ℕ := 1839

def tenMillionHigh17Density : ℚ := 3_287_917_597 / 5_212_409_202
def tenMillionHigh17Endpoint : ℕ := 1839

/-! ## The thirteen exhaustive rows -/

inductive TenMillionBranch where
  | e1TwoCells
  | e1OneCell
  | e2TwoCells
  | e2OneCell
  | e3Cell
  | o2DifferentDenseCells
  | o2SameDenseCell
  | o1OneCell
  | o1NoCommonCutoffPrime
  | o1Common7
  | o1Common11
  | o1Common13
  | o1Common17
  deriving DecidableEq

def tenMillionBranchTotal : TenMillionBranch → ℚ
  | .e1TwoCells =>
      tenMillionDiagonalUnrestricted +
        tenMillionFourPayment tenMillionEvenFourDensity
          tenMillionEvenFourEndpoint +
        4 * tenMillionSquareTail29 / 25 +
        2 * tenMillionRootV1 / 3
  | .e1OneCell =>
      tenMillionDiagonalConcentrated + 8 * tenMillionCellCharge +
        tenMillionFinitePayment tenMillionEvenCellDensity
          tenMillionEvenCellEndpoint +
        3 * tenMillionSquareTail7 / 25 + tenMillionRootV1 / 2
  | .e2TwoCells =>
      tenMillionDiagonalUnrestricted +
        tenMillionFourPayment tenMillionEvenFourDensity
          tenMillionEvenFourEndpoint +
        4 * tenMillionSquareTail29 / 25 +
        2 * tenMillionRootV2 / 3
  | .e2OneCell =>
      tenMillionDiagonalE2Cell + 17 * tenMillionCellCharge +
        tenMillionFinitePayment tenMillionEvenCellDensity
          tenMillionEvenCellEndpoint +
        3 * tenMillionSquareTail7 / 25 + tenMillionRootV2 / 2
  | .e3Cell =>
      tenMillionDiagonalLowTwoAdic + 18 * tenMillionCellCharge +
        tenMillionFinitePayment tenMillionEvenCellDensity
          tenMillionEvenCellEndpoint +
        3 * tenMillionSquareTail7 / 25 + tenMillionRootV3 / 2
  | .o2DifferentDenseCells =>
      tenMillionDiagonalOddUnion + 27 * tenMillionCellCharge +
        tenMillionFourPayment tenMillionOddFourDensity
          tenMillionOddFourEndpoint +
        4 * tenMillionSquareTail7 / 25 +
        2 * tenMillionRootOdd7 / 3
  | .o2SameDenseCell =>
      2 * tenMillionDiagonalOneOddCell + 43 * tenMillionCellCharge +
        tenMillionFinitePayment tenMillionOddTwoCellDensity
          tenMillionOddTwoCellEndpoint +
        3 * tenMillionSquareTail7 / 25 + tenMillionRootOdd7 / 2
  | .o1OneCell =>
      tenMillionDiagonalOneOddCell + 36 * tenMillionCellCharge +
        tenMillionFinitePayment tenMillionOddOneCellDensity
          tenMillionOddOneCellEndpoint +
        3 * tenMillionSquareTail7 / 25 + tenMillionRootOdd7 / 2
  | .o1NoCommonCutoffPrime =>
      tenMillionDiagonalOneOdd + 36 * tenMillionCellCharge +
        tenMillionFinitePayment tenMillionHighNoneDensity
          tenMillionHighNoneEndpoint +
        3 * tenMillionSquareTail17 / 25 + tenMillionRootOdd17 / 2
  | .o1Common7 =>
      tenMillionDiagonalOneOddCell + 1 / (4 * 7 ^ 2) +
        1 / tenMillionLower + 36 * tenMillionCellCharge +
        tenMillionFinitePayment tenMillionHigh7Density
          tenMillionHigh7Endpoint +
        3 * tenMillionSquareTail17 / 25 + tenMillionRootOdd17 / 2
  | .o1Common11 =>
      tenMillionDiagonalOneOddCell + 1 / (4 * 11 ^ 2) +
        1 / tenMillionLower + 36 * tenMillionCellCharge +
        tenMillionFinitePayment tenMillionHigh11Density
          tenMillionHigh11Endpoint +
        3 * tenMillionSquareTail17 / 25 + tenMillionRootOdd17 / 2
  | .o1Common13 =>
      tenMillionDiagonalOneOddCell + 1 / (4 * 13 ^ 2) +
        1 / tenMillionLower + 36 * tenMillionCellCharge +
        tenMillionFinitePayment tenMillionHigh13Density
          tenMillionHigh13Endpoint +
        3 * tenMillionSquareTail17 / 25 + tenMillionRootOdd17 / 2
  | .o1Common17 =>
      tenMillionDiagonalOneOddCell + 1 / (4 * 17 ^ 2) +
        1 / tenMillionLower + 36 * tenMillionCellCharge +
        tenMillionFinitePayment tenMillionHigh17Density
          tenMillionHigh17Endpoint +
        3 * tenMillionSquareTail17 / 25 + tenMillionRootOdd17 / 2

def tenMillionControllingTotal : ℚ :=
  tenMillionBranchTotal .o1NoCommonCutoffPrime

/-- Exact counterpart of equation `ten-million-total`: no decimal rounding
is involved in this statement. -/
theorem tenMillionControllingTotal_exact :
    tenMillionControllingTotal =
      763_615_312_500_117_937_890_735_194_394_344_350_671_899_687 /
        19_095_445_597_028_634_630_106_127_955_109_482_009_500_000_000 := by
  norm_num [tenMillionControllingTotal, tenMillionBranchTotal,
    tenMillionDiagonalOneOdd, tenMillionCellCharge,
    tenMillionFinitePayment, tenMillionHighNoneDensity,
    tenMillionHighNoneEndpoint, tenMillionSquareTail17,
    tenMillionRootOdd17, tenMillionRootOdd7, tenMillionLower]

theorem tenMillionBranchTotal_le_controlling (branch : TenMillionBranch) :
    tenMillionBranchTotal branch ≤ tenMillionControllingTotal := by
  cases branch <;>
    norm_num [tenMillionControllingTotal, tenMillionBranchTotal,
      tenMillionCellCharge, tenMillionDiagonalUnrestricted,
      tenMillionDiagonalConcentrated, tenMillionDiagonalLowTwoAdic,
      tenMillionDiagonalE2Cell, tenMillionDiagonalOddUnion,
      tenMillionDiagonalOneOdd, tenMillionDiagonalOneOddCell,
      tenMillionRootV1, tenMillionRootV2, tenMillionRootV3,
      tenMillionRootOdd7, tenMillionRootOdd17, tenMillionSquareTail7,
      tenMillionSquareTail17, tenMillionSquareTail29,
      tenMillionFinitePayment, tenMillionFourPayment,
      tenMillionEvenFourDensity, tenMillionEvenFourEndpoint,
      tenMillionOddFourDensity, tenMillionOddFourEndpoint,
      tenMillionEvenCellDensity, tenMillionEvenCellEndpoint,
      tenMillionOddTwoCellDensity, tenMillionOddTwoCellEndpoint,
      tenMillionOddOneCellDensity, tenMillionOddOneCellEndpoint,
      tenMillionHighNoneDensity, tenMillionHighNoneEndpoint,
      tenMillionHigh7Density, tenMillionHigh7Endpoint,
      tenMillionHigh11Density, tenMillionHigh11Endpoint,
      tenMillionHigh13Density, tenMillionHigh13Endpoint,
      tenMillionHigh17Density, tenMillionHigh17Endpoint, tenMillionLower]

theorem tenMillionControlling_lt_lower_target :
    tenMillionControllingTotal < tenMillionHallTarget tenMillionLower := by
  norm_num [tenMillionControllingTotal, tenMillionBranchTotal,
    tenMillionHallTarget, tenMillionDiagonalOneOdd, tenMillionCellCharge,
    tenMillionFinitePayment, tenMillionHighNoneDensity,
    tenMillionHighNoneEndpoint, tenMillionSquareTail17,
    tenMillionRootOdd17, tenMillionRootOdd7, tenMillionLower]

theorem tenMillionLowerTarget_le {N : ℕ}
    (hN : tenMillionLower ≤ N) :
    tenMillionHallTarget tenMillionLower ≤ tenMillionHallTarget N := by
  have hNq : (tenMillionLower : ℚ) ≤ (N : ℚ) := by
    exact_mod_cast hN
  have hNpos : (0 : ℚ) < 25 * (N : ℚ) := by
    have : (0 : ℚ) < N := by
      exact_mod_cast (lt_of_lt_of_le (by norm_num [tenMillionLower]) hN)
    positivity
  have hLowerPos : (0 : ℚ) < 25 * (tenMillionLower : ℚ) := by
    norm_num [tenMillionLower]
  have hfrac :
      (7 : ℚ) / (25 * (N : ℚ)) ≤
        7 / (25 * (tenMillionLower : ℚ)) := by
    rw [div_le_div_iff₀ hNpos hLowerPos]
    nlinarith
  unfold tenMillionHallTarget
  linarith

theorem tenMillionBranch_budget (branch : TenMillionBranch) :
    tenMillionBranchTotal branch <
      tenMillionHallTarget tenMillionLower :=
  lt_of_le_of_lt (tenMillionBranchTotal_le_controlling branch)
    tenMillionControlling_lt_lower_target

/-! ## Direct Hall bridge and the honest remaining obligation -/

/-- A normalized bound for the *actual* Hall completion implies the literal
integer Hall inequality.  This is the conversion silently used by the paper's
decimal tables. -/
theorem hallCompletion_card_le_of_ratio_le_target
    {N : ℕ} (hN : 0 < N) {B : Finset ℕ}
    (hBout : Erdos848OutsideSet N B)
    (hRatio : ((hallCompletion N B).card : ℚ) / N ≤
      tenMillionHallTarget N) :
    B.card + (hallNonNeighbours N B).card ≤ (OriginalA7 N).card := by
  have hNq : (0 : ℚ) < N := by exact_mod_cast hN
  have hscaled :
      ((hallCompletion N B).card : ℚ) ≤ (N : ℚ) / 25 - 7 / 25 := by
    have hmul := (div_le_iff₀ hNq).mp hRatio
    calc
      ((hallCompletion N B).card : ℚ) ≤
          tenMillionHallTarget N * N := hmul
      _ = (N : ℚ) / 25 - 7 / 25 := by
        simp only [tenMillionHallTarget]
        field_simp [ne_of_gt hNq]
        <;> ring
  have hcast :
      ((hallCompletion N B).card : ℚ) ≤
        ((OriginalA7 N).card : ℚ) :=
    hscaled.trans (originalA7_card_cast_lower N)
  have hnat : (hallCompletion N B).card ≤ (OriginalA7 N).card := by
    exact_mod_cast hcast
  rw [hallCompletion_card hBout] at hnat
  exact hnat

/-- The interval-specific producer obligation under an alleged strict Hall
defect.  Equality cases (in particular the sharp base construction) are not
required to satisfy a strict normalized completion estimate. -/
def Erdos848TenMillionBranchExhaustion : Prop :=
  ∀ N, tenMillionLower ≤ N → N < tenMillionUpper →
    ∀ B : Finset ℕ, Erdos848OutsideSet N B →
      NonSquarefreeProductProp B →
      (OriginalA7 N).card <
        B.card + (hallNonNeighbours N B).card →
      ∃ branch : TenMillionBranch,
        ((hallCompletion N B).card : ℚ) / N ≤
          tenMillionBranchTotal branch

def Erdos848TenMillionClose : Prop :=
  ∀ N, tenMillionLower ≤ N → N < tenMillionUpper →
    OriginalProblem848Statement N

/-- This is an assembly theorem, not a claim that branch exhaustion has
already been proved.  It shows that no additional numerical or rounding gap
remains once the direct terminal estimate is supplied. -/
theorem erdos848TenMillionClose_of_branchExhaustion
    (hexhaustive : Erdos848TenMillionBranchExhaustion) :
    Erdos848TenMillionClose := by
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
        tenMillionHallTarget N := by
    exact hbranch.trans <| (tenMillionBranchTotal_le_controlling branch).trans <|
      (le_of_lt tenMillionControlling_lt_lower_target).trans
        (tenMillionLowerTarget_le hLower)
  have hHall := hallCompletion_card_le_of_ratio_le_target
    (lt_of_lt_of_le (by norm_num [tenMillionLower]) hLower) hBout htarget
  omega

end Erdos848
