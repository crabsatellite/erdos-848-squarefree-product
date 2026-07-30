import Erdos848.TailHybridPaperRootHighCount
import Erdos848.TailHybridTenBranchArithmetic

namespace Erdos848

/-!
# Finite certificate ABI for the hybrid root envelope

This module separates the finite numerical data from the mathematical
argument.  A row stores one finite prime-count upper bound.  All interval
monotonicity, support-length reduction, coefficient comparison, and
normalisation are proved here once.  Consequently a generated provider never
states a theorem about an ambient Hall set or pivot.  The numerical prime
bound may be supplied by any kernel theorem, allowing the generated rows to
reuse the already checked cumulative and packed-slope certificates.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

structure HybridPaperRootEnvelopeRowData where
  regime : HybridPaperDiagonalRegime
  lower : Nat
  upper : Nat
  primeUpper : Nat

def HybridPaperRootEnvelopeRowData.rangeValid
    (row : HybridPaperRootEnvelopeRowData) : Prop :=
  row.regime.lower ≤ row.lower ∧
    row.lower ≤ row.upper ∧
      row.upper < row.regime.stop

def HybridPaperRootEnvelopeRowData.coefficientCeiling
    (row : HybridPaperRootEnvelopeRowData) (supportLength : Nat) : Rat :=
  (4 * 2 ^ (supportLength + 1) : Nat) *
    ((row.regime.rootTarget supportLength : Rat) +
      ((row.upper / 25 + 2 : Nat) : Rat) /
          (2 * ((row.lower / row.regime.rootSplit : Nat) : Rat)) *
        (4 + (row.regime.rootTarget supportLength : Rat) / 3026))

def HybridPaperRootEnvelopeRowData.budgetsValid
    (row : HybridPaperRootEnvelopeRowData) : Prop :=
  ∀ supportLength : Fin 9,
    6 * (row.coefficientCeiling supportLength + row.primeUpper) / row.lower ≤
      row.regime.rootEnvelope

instance (row : HybridPaperRootEnvelopeRowData) :
    Decidable row.rangeValid := by
  unfold HybridPaperRootEnvelopeRowData.rangeValid
  infer_instance

instance (row : HybridPaperRootEnvelopeRowData) :
    Decidable row.budgetsValid := by
  unfold HybridPaperRootEnvelopeRowData.budgetsValid
  infer_instance

def HybridPaperRootEnvelopeRowData.check
    (row : HybridPaperRootEnvelopeRowData) : Bool :=
  decide row.rangeValid && decide row.budgetsValid

theorem HybridPaperRootEnvelopeRowData.check_sound
    {row : HybridPaperRootEnvelopeRowData}
    (hcheck : row.check = true) :
    row.rangeValid ∧ row.budgetsValid := by
  have hparts := Bool.and_eq_true_iff.mp hcheck
  exact ⟨of_decide_eq_true hparts.1, of_decide_eq_true hparts.2⟩

theorem HybridPaperRootEnvelopeRowData.check_complete
    {row : HybridPaperRootEnvelopeRowData}
    (hrange : row.rangeValid)
    (hbudgets : row.budgetsValid) :
    row.check = true := by
  simp [HybridPaperRootEnvelopeRowData.check, hrange, hbudgets]

/-- A regime-wise integral ceiling for all nine root coefficients once the
row's endpoint ratio satisfies `rootEnvelopeRatioNumerator /
rootEnvelopeRatioDenominator`. -/
def HybridPaperDiagonalRegime.rootEnvelopeCoefficientCeiling :
    HybridPaperDiagonalRegime → Nat
  | .twoHundredToThreeHundred => 103914
  | .threeHundredToFiveHundred => 131047
  | .fiveHundredToOneBillion => 179247
  | .oneToTwoBillion => 273437

def HybridPaperDiagonalRegime.rootEnvelopeRatioNumerator :
    HybridPaperDiagonalRegime → Nat
  | .twoHundredToThreeHundred => 8
  | .threeHundredToFiveHundred => 9
  | .fiveHundredToOneBillion => 21
  | .oneToTwoBillion => 13

def HybridPaperDiagonalRegime.rootEnvelopeRatioDenominator :
    HybridPaperDiagonalRegime → Nat
  | .twoHundredToThreeHundred => 5
  | .threeHundredToFiveHundred => 5
  | .fiveHundredToOneBillion => 10
  | .oneToTwoBillion => 5

theorem HybridPaperRootEnvelopeRowData.coefficientCeiling_le
    (row : HybridPaperRootEnvelopeRowData)
    (supportLength : Fin 9)
    (hrange : row.rangeValid)
    (hratio :
      row.regime.rootEnvelopeRatioDenominator * (row.upper / 25 + 2) ≤
        2 * row.regime.rootEnvelopeRatioNumerator *
          (row.lower / row.regime.rootSplit)) :
    row.coefficientCeiling supportLength ≤
      row.regime.rootEnvelopeCoefficientCeiling := by
  rcases row with ⟨regime, lower, upper, primeUpper⟩
  have hdenNat : 0 < lower / regime.rootSplit := by
    cases regime <;>
      norm_num [HybridPaperRootEnvelopeRowData.rangeValid,
        HybridPaperDiagonalRegime.lower,
        HybridPaperDiagonalRegime.stop,
        HybridPaperDiagonalRegime.rootSplit] at hrange hratio ⊢ <;>
      omega
  have hdenRat :
      (0 : Rat) < 2 * ((lower / regime.rootSplit : Nat) : Rat) := by
    positivity
  have hratioDenRat :
      (0 : Rat) < regime.rootEnvelopeRatioDenominator := by
    cases regime <;>
      norm_num [HybridPaperDiagonalRegime.rootEnvelopeRatioDenominator]
  have hratioRat :
      (((upper / 25 + 2 : Nat) : Rat)) /
          (2 * ((lower / regime.rootSplit : Nat) : Rat)) ≤
        regime.rootEnvelopeRatioNumerator /
          regime.rootEnvelopeRatioDenominator := by
    apply (div_le_div_iff₀ hdenRat hratioDenRat).2
    have hratioCast :
        ((regime.rootEnvelopeRatioDenominator *
            (upper / 25 + 2) : Nat) : Rat) ≤
          ((2 * regime.rootEnvelopeRatioNumerator *
            (lower / regime.rootSplit) : Nat) : Rat) := by
      exact_mod_cast hratio
    norm_num only [Nat.cast_mul, Nat.cast_ofNat] at hratioCast
    convert hratioCast using 1 <;> ring
  cases regime <;>
    fin_cases supportLength <;>
    norm_num [HybridPaperRootEnvelopeRowData.coefficientCeiling,
      HybridPaperDiagonalRegime.rootTarget,
      HybridPaperDiagonalRegime.rootSplit,
      HybridPaperDiagonalRegime.rootEnvelopeRatioNumerator,
      HybridPaperDiagonalRegime.rootEnvelopeRatioDenominator,
      HybridPaperDiagonalRegime.rootEnvelopeCoefficientCeiling] at hratioRat ⊢ <;>
    linarith

/-- Kernel-friendly row closure.  Generated rows need only prove two natural
number inequalities; the nine rational coefficient cases are discharged once
in `coefficientCeiling_le`. -/
theorem HybridPaperRootEnvelopeRowData.check_complete_of_nat_bounds
    {row : HybridPaperRootEnvelopeRowData}
    (hrange : row.rangeValid)
    (hratio :
      row.regime.rootEnvelopeRatioDenominator * (row.upper / 25 + 2) ≤
        2 * row.regime.rootEnvelopeRatioNumerator *
          (row.lower / row.regime.rootSplit))
    (hbudget :
      6 * (row.regime.rootEnvelopeCoefficientCeiling + row.primeUpper) *
          1_000_000_000 ≤
        row.regime.rootEnvelopeNumerator * row.lower) :
    row.check = true := by
  apply row.check_complete hrange
  intro supportLength
  have hcoefficient :=
    row.coefficientCeiling_le supportLength hrange hratio
  have hLower : (0 : Rat) < row.lower := by
    have hregimeLower : 0 < row.regime.lower := by
      cases row.regime <;>
        norm_num [HybridPaperDiagonalRegime.lower]
    have hLowerNat : 0 < row.lower :=
      hregimeLower.trans_le hrange.1
    exact_mod_cast hLowerNat
  have hBillion : (0 : Rat) < 1_000_000_000 := by norm_num
  have hbudgetRat :
      ((6 * (row.regime.rootEnvelopeCoefficientCeiling + row.primeUpper) *
          1_000_000_000 : Nat) : Rat) ≤
        ((row.regime.rootEnvelopeNumerator * row.lower : Nat) : Rat) := by
    exact_mod_cast hbudget
  norm_num only [Nat.cast_mul, Nat.cast_add, Nat.cast_ofNat] at hbudgetRat
  calc
    6 * (row.coefficientCeiling supportLength + row.primeUpper) / row.lower ≤
        6 * (row.regime.rootEnvelopeCoefficientCeiling + row.primeUpper) /
          row.lower := by
      gcongr
    _ ≤ row.regime.rootEnvelopeNumerator / 1_000_000_000 := by
      apply (div_le_div_iff₀ hLower hBillion).2
      exact hbudgetRat
    _ = row.regime.rootEnvelope := by
      rfl

structure CertifiedHybridPaperRootEnvelopeRow where
  row : HybridPaperRootEnvelopeRowData
  primeBound :
    Nat.primeCounting (row.upper / row.regime.rootSplit) ≤
      row.primeUpper
  checked : row.check = true

def hybridPaperRootEnvelopeRowsCoverFrom
    (start stop : Nat) :
    List CertifiedHybridPaperRootEnvelopeRow → Bool
  | [] => decide (start = stop)
  | certificate :: rest =>
      decide
          (certificate.row.lower = start ∧
            start ≤ certificate.row.upper) &&
        hybridPaperRootEnvelopeRowsCoverFrom
          (certificate.row.upper + 1) stop rest

theorem hybridPaperRootEnvelopeRowsCoverFrom_append
    {start middle stop : Nat}
    {left right : List CertifiedHybridPaperRootEnvelopeRow}
    (hleft :
      hybridPaperRootEnvelopeRowsCoverFrom start middle left = true)
    (hright :
      hybridPaperRootEnvelopeRowsCoverFrom middle stop right = true) :
    hybridPaperRootEnvelopeRowsCoverFrom start stop (left ++ right) = true := by
  induction left generalizing start with
  | nil =>
      change decide (start = middle) = true at hleft
      have hstart : start = middle := of_decide_eq_true hleft
      subst middle
      simpa using hright
  | cons certificate rest ih =>
      change
        (decide
            (certificate.row.lower = start ∧
              start ≤ certificate.row.upper) &&
          hybridPaperRootEnvelopeRowsCoverFrom
            (certificate.row.upper + 1) middle rest) = true at hleft
      change
        (decide
            (certificate.row.lower = start ∧
              start ≤ certificate.row.upper) &&
          hybridPaperRootEnvelopeRowsCoverFrom
            (certificate.row.upper + 1) stop (rest ++ right)) = true
      have hparts := Bool.and_eq_true_iff.mp hleft
      exact Bool.and_eq_true_iff.mpr
        ⟨hparts.1, ih hparts.2⟩

theorem exists_certifiedHybridPaperRootEnvelopeRow_of_cover
    {start stop N : Nat}
    {rows : List CertifiedHybridPaperRootEnvelopeRow}
    (hcover :
      hybridPaperRootEnvelopeRowsCoverFrom start stop rows = true)
    (hstart : start ≤ N) (hstop : N < stop) :
    ∃ certificate ∈ rows,
      certificate.row.lower ≤ N ∧ N ≤ certificate.row.upper := by
  induction rows generalizing start with
  | nil =>
      change decide (start = stop) = true at hcover
      have heq : start = stop := of_decide_eq_true hcover
      omega
  | cons certificate rest ih =>
      change
        (decide
            (certificate.row.lower = start ∧
              start ≤ certificate.row.upper) &&
          hybridPaperRootEnvelopeRowsCoverFrom
            (certificate.row.upper + 1) stop rest) = true at hcover
      have hparts := Bool.and_eq_true_iff.mp hcover
      have hfirst :
          certificate.row.lower = start ∧
            start ≤ certificate.row.upper :=
        of_decide_eq_true hparts.1
      by_cases hNUpper : N ≤ certificate.row.upper
      · exact
          ⟨certificate, by simp, hfirst.1 ▸ hstart, hNUpper⟩
      · obtain ⟨found, hfound, hlower, hupper⟩ :=
          ih hparts.2 (by omega)
        exact ⟨found, by simp [hfound], hlower, hupper⟩

structure HybridPaperRootEnvelopeCertificate where
  rows : List CertifiedHybridPaperRootEnvelopeRow
  covers :
    hybridPaperRootEnvelopeRowsCoverFrom
      200_000_000 2_000_000_000 rows = true

private theorem hybridPaperRootCoefficient_le_rowCeiling
    (certificate : CertifiedHybridPaperRootEnvelopeRow)
    {N supportLength : Nat}
    (hLower : certificate.row.lower ≤ N)
    (hUpper : N ≤ certificate.row.upper) :
    hybridPaperRootHighCoefficient
        certificate.row.regime supportLength N ≤
      certificate.row.coefficientCeiling supportLength := by
  have hrange := (certificate.row.check_sound certificate.checked).1
  have hrowLower : 200_000_000 ≤ certificate.row.lower := by
    have hregimeLower : 200_000_000 ≤ certificate.row.regime.lower := by
      cases certificate.row.regime <;>
        norm_num [HybridPaperDiagonalRegime.lower]
    exact hregimeLower.trans hrange.1
  have hdenLowerNat :
      0 < certificate.row.lower / certificate.row.regime.rootSplit := by
    cases certificate.row.regime <;>
      norm_num [HybridPaperDiagonalRegime.rootSplit,
        HybridPaperDiagonalRegime.lower] at * <;>
      omega
  have hdenN :
      certificate.row.lower / certificate.row.regime.rootSplit ≤
        N / certificate.row.regime.rootSplit :=
    Nat.div_le_div_right hLower
  have hnum :
      N / 25 + 2 ≤ certificate.row.upper / 25 + 2 := by
    exact Nat.add_le_add_right (Nat.div_le_div_right hUpper) 2
  have hnumQ :
      (((N / 25 + 2 : Nat) : Rat)) ≤
        ((certificate.row.upper / 25 + 2 : Nat) : Rat) := by
    exact_mod_cast hnum
  have hdenQ :
      (2 * ((certificate.row.lower /
          certificate.row.regime.rootSplit : Nat) : Rat)) ≤
        2 * ((N / certificate.row.regime.rootSplit : Nat) : Rat) := by
    exact_mod_cast (Nat.mul_le_mul_left 2 hdenN)
  have hdenLowerQ :
      (0 : Rat) <
        2 * ((certificate.row.lower /
          certificate.row.regime.rootSplit : Nat) : Rat) := by
    positivity
  have hdenNQ :
      (0 : Rat) <
        2 * ((N / certificate.row.regime.rootSplit : Nat) : Rat) :=
    hdenLowerQ.trans_le hdenQ
  have hratio :
      (((N / 25 + 2 : Nat) : Rat)) /
          (2 * ((N / certificate.row.regime.rootSplit : Nat) : Rat)) ≤
        ((certificate.row.upper / 25 + 2 : Nat) : Rat) /
          (2 * ((certificate.row.lower /
            certificate.row.regime.rootSplit : Nat) : Rat)) := by
    calc
      (((N / 25 + 2 : Nat) : Rat)) /
          (2 * ((N / certificate.row.regime.rootSplit : Nat) : Rat)) ≤
        ((certificate.row.upper / 25 + 2 : Nat) : Rat) /
          (2 * ((N / certificate.row.regime.rootSplit : Nat) : Rat)) :=
        div_le_div_of_nonneg_right hnumQ hdenNQ.le
      _ ≤
        ((certificate.row.upper / 25 + 2 : Nat) : Rat) /
          (2 * ((certificate.row.lower /
            certificate.row.regime.rootSplit : Nat) : Rat)) :=
        div_le_div_of_nonneg_left (by positivity) hdenLowerQ hdenQ
  unfold hybridPaperRootHighCoefficient
  unfold HybridPaperRootEnvelopeRowData.coefficientCeiling
  gcongr

theorem CertifiedHybridPaperRootEnvelopeRow.root_combined_ratio_le
    (certificate : CertifiedHybridPaperRootEnvelopeRow)
    {N supportLength : Nat}
    (hLower : certificate.row.lower ≤ N)
    (hUpper : N ≤ certificate.row.upper)
    (hLength : supportLength ≤ 8) :
    6 * (hybridPaperRootHighCoefficient
          certificate.row.regime supportLength N +
        Nat.primeCounting
          (N / certificate.row.regime.rootSplit)) / N ≤
      certificate.row.regime.rootEnvelope := by
  have hrowSound := certificate.row.check_sound certificate.checked
  have hregimeLower :
      200_000_000 ≤ certificate.row.regime.lower := by
    cases certificate.row.regime <;>
      norm_num [HybridPaperDiagonalRegime.lower]
  have hrowLowerNat : 200_000_000 ≤ certificate.row.lower :=
    hregimeLower.trans hrowSound.1.1
  have hNpos : (0 : Rat) < N := by
    have hpositive : 0 < certificate.row.lower := by
      omega
    exact_mod_cast hpositive.trans_le hLower
  have hrowLowerPos : (0 : Rat) < certificate.row.lower := by
    exact_mod_cast (show 0 < certificate.row.lower by omega)
  have hprimeArgument :
      N / certificate.row.regime.rootSplit ≤
        certificate.row.upper / certificate.row.regime.rootSplit :=
    Nat.div_le_div_right hUpper
  have hprime :
      Nat.primeCounting
          (N / certificate.row.regime.rootSplit) ≤
        certificate.row.primeUpper :=
    (Nat.monotone_primeCounting hprimeArgument).trans
      certificate.primeBound
  have hcoefficient :=
    hybridPaperRootCoefficient_le_rowCeiling
      certificate (N := N) (supportLength := supportLength)
        hLower hUpper
  have hsum :
      hybridPaperRootHighCoefficient
          certificate.row.regime supportLength N +
          Nat.primeCounting (N / certificate.row.regime.rootSplit) ≤
        certificate.row.coefficientCeiling supportLength +
          certificate.row.primeUpper := by
    exact add_le_add hcoefficient (by exact_mod_cast hprime)
  have hscaled :
      6 * (hybridPaperRootHighCoefficient
          certificate.row.regime supportLength N +
        Nat.primeCounting
          (N / certificate.row.regime.rootSplit)) ≤
      6 * (certificate.row.coefficientCeiling supportLength +
        certificate.row.primeUpper) := by
    gcongr
  have hdivN :
      6 * (hybridPaperRootHighCoefficient
          certificate.row.regime supportLength N +
        Nat.primeCounting
          (N / certificate.row.regime.rootSplit)) / N ≤
      6 * (certificate.row.coefficientCeiling supportLength +
        certificate.row.primeUpper) / N :=
    div_le_div_of_nonneg_right hscaled hNpos.le
  have hdenominator :
      6 * (certificate.row.coefficientCeiling supportLength +
        certificate.row.primeUpper) / N ≤
      6 * (certificate.row.coefficientCeiling supportLength +
        certificate.row.primeUpper) / certificate.row.lower := by
    have hLowerQ : (certificate.row.lower : Rat) ≤ N := by
      exact_mod_cast hLower
    have hceilingNonneg :
        (0 : Rat) ≤ certificate.row.coefficientCeiling supportLength := by
      unfold HybridPaperRootEnvelopeRowData.coefficientCeiling
      positivity
    have hnumeratorNonneg :
        (0 : Rat) ≤
          6 * (certificate.row.coefficientCeiling supportLength +
            certificate.row.primeUpper) := by
      positivity
    exact div_le_div_of_nonneg_left
      hnumeratorNonneg hrowLowerPos hLowerQ
  have hbudget :=
    hrowSound.2 (⟨supportLength, by omega⟩ : Fin 9)
  exact hdivN.trans (hdenominator.trans hbudget)

theorem HybridPaperRootEnvelopeCertificate.root_combined_ratio_le
    (provider : HybridPaperRootEnvelopeCertificate)
    {regime : HybridPaperDiagonalRegime}
    {N supportLength : Nat}
    (hcover : regime.Covers N)
    (hLength : supportLength ≤ 8) :
    6 * (hybridPaperRootHighCoefficient regime supportLength N +
        Nat.primeCounting (N / regime.rootSplit)) / N ≤
      regime.rootEnvelope := by
  obtain ⟨certificate, _hmem, hrowLower, hrowUpper⟩ :=
    exists_certifiedHybridPaperRootEnvelopeRow_of_cover
      provider.covers (by
        have hregimeLower : 200_000_000 ≤ regime.lower := by
          cases regime <;> norm_num [HybridPaperDiagonalRegime.lower]
        exact hregimeLower.trans hcover.1) (by
        exact hcover.2.trans_le regime.stop_le_twoBillion)
  have hrowRegime :
      certificate.row.regime = regime := by
    have hrange := (certificate.row.check_sound certificate.checked).1
    have hregimeAt :=
      HybridPaperDiagonalRegime.eq_regimeAt_of_mem
        hrange hrowLower hrowUpper
    have hcoverAt := regime.regimeAt_eq hcover
    exact hregimeAt.trans hcoverAt
  subst regime
  exact certificate.root_combined_ratio_le
    hrowLower hrowUpper hLength

#print axioms HybridPaperRootEnvelopeRowData.check_sound
#print axioms exists_certifiedHybridPaperRootEnvelopeRow_of_cover
#print axioms CertifiedHybridPaperRootEnvelopeRow.root_combined_ratio_le
#print axioms HybridPaperRootEnvelopeCertificate.root_combined_ratio_le

end Erdos848
