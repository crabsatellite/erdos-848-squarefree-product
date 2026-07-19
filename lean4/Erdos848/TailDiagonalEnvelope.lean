import Erdos848.TailCRTCounting
import Mathlib.Analysis.Complex.ExponentialBounds

namespace Erdos848

/-!
Exact outward envelope for the logarithmic term in the archived diagonal
block producer.  The producer used `std::log(20_000_000)` in `long double`.
For the kernel route we instead prove `log(20_000_000) < 17`, so every
occurrence of `log R + 2` is bounded by the rational integer `19`.

This file only replaces the rounding-sensitive analytic expression.  The
integer truncated-Moebius counts and the mathematical tail inequality that
feeds the expression remain separate certificate obligations.
-/

theorem log_twentyMillion_lt_seventeen :
    Real.log (20_000_000 : ℝ) < 17 := by
  rw [Real.log_lt_iff_lt_exp (by norm_num : (0 : ℝ) < 20_000_000)]
  have hbase : (27 / 10 : ℝ) < Real.exp 1 :=
    lt_trans (by norm_num) Real.exp_one_gt_d9
  have hpow : (27 / 10 : ℝ) ^ 17 < (Real.exp 1) ^ 17 := by
    gcongr
  have hn : (20_000_000 : ℝ) < (27 / 10 : ℝ) ^ 17 := by
    norm_num
  calc
    (20_000_000 : ℝ) < (27 / 10 : ℝ) ^ 17 := hn
    _ < (Real.exp 1) ^ 17 := hpow
    _ = Real.exp 17 := by
      rw [← Real.exp_nat_mul]
      norm_num

noncomputable def diagonalRatioAnalytic
    (truncCount U L theta : ℝ) : ℝ :=
  (truncCount +
      U * (2 * theta * (Real.log 20_000_000 + 2) / 20_000_000) +
      13 * (U ^ 2 + 1) / 20_000_000 ^ 2) / L

noncomputable def diagonalRatioRationalEnvelope
    (truncCount U L theta : ℝ) : ℝ :=
  (truncCount +
      U * (38 * theta / 20_000_000) +
      13 * (U ^ 2 + 1) / 20_000_000 ^ 2) / L

/-- Exact outward rounding replacement for the diagonal producer's
`long double` expression.  All values supplied by a generated block
certificate can now be rational numbers checked by normalization. -/
theorem diagonalRatioAnalytic_le_rationalEnvelope
    {truncCount U L theta : ℝ}
    (hU : 0 ≤ U) (hL : 0 < L) (htheta : 0 ≤ theta) :
    diagonalRatioAnalytic truncCount U L theta ≤
      diagonalRatioRationalEnvelope truncCount U L theta := by
  have hlog : Real.log (20_000_000 : ℝ) + 2 ≤ 19 := by
    linarith [log_twentyMillion_lt_seventeen]
  have hharmonic :
      2 * theta * (Real.log 20_000_000 + 2) / 20_000_000 ≤
        38 * theta / 20_000_000 := by
    have htwoTheta : 0 ≤ 2 * theta := by positivity
    have hmul := mul_le_mul_of_nonneg_left hlog htwoTheta
    norm_num at hmul ⊢
    linarith
  unfold diagonalRatioAnalytic diagonalRatioRationalEnvelope
  apply (div_le_div_iff_of_pos_right hL).2
  nlinarith [mul_le_mul_of_nonneg_left hharmonic hU]

/-- Exact block monotonicity step used by every diagonal row: if `N` lies
above the block lower endpoint and its count is bounded by the certified count
at the upper endpoint, the normalized ratio is bounded by `upper / L`. -/
theorem natRatio_le_blockEnvelope
    {L N count upper : ℕ} (hL : 0 < L) (hLN : L ≤ N)
    (hcount : count ≤ upper) :
    (count : ℚ) / N ≤ (upper : ℚ) / L := by
  have hN : (0 : ℚ) < N := by
    exact_mod_cast (lt_of_lt_of_le hL hLN)
  have hLQ : (0 : ℚ) < L := by exact_mod_cast hL
  rw [div_le_div_iff₀ hN hLQ]
  exact_mod_cast Nat.mul_le_mul hcount hLN

/-! ## The mod-900 concentration cells -/

def concentratedResidues900 (parityClass cell : ℕ) : Finset ℕ :=
  (Finset.range 900).filter fun x =>
    x % 25 ≠ 7 ∧ x % 25 ≠ 18 ∧
      (x % 4 ≠ parityClass ∨ x % 9 = cell)

lemma concentratedResidues900_subset (parityClass cell : ℕ) :
    concentratedResidues900 parityClass cell ⊆ Finset.range 900 := by
  exact Finset.filter_subset _ _

set_option maxRecDepth 10000 in
/-- Each of the eighteen even concentration cells has exactly 644 residues
per period.  This replaces the producer's hard-coded `cycles * 644` base
count by kernel reduction over the literal 900 residues. -/
theorem concentratedResidues900_card
    {parityClass cell : ℕ}
    (hparity : parityClass = 0 ∨ parityClass = 2) (hcell : cell < 9) :
    (concentratedResidues900 parityClass cell).card = 644 := by
  rcases hparity with rfl | rfl <;>
    interval_cases cell <;> decide

theorem concentratedResidueCount_exact
    (N parityClass cell : ℕ)
    (hparity : parityClass = 0 ∨ parityClass = 2) (hcell : cell < 9) :
    ((Finset.range N).filter fun x =>
      x % 25 ≠ 7 ∧ x % 25 ≠ 18 ∧
        (x % 4 ≠ parityClass ∨ x % 9 = cell)).card =
      (N / 900) * 644 +
        ((concentratedResidues900 parityClass cell).filter fun r =>
          r < N % 900).card := by
  have hcount := card_filter_residueSet_exact
    (concentratedResidues900 parityClass cell) 900 N (by norm_num)
    (concentratedResidues900_subset parityClass cell)
  rw [concentratedResidues900_card hparity hcell] at hcount
  simpa [concentratedResidues900, Nat.mod_lt] using hcount

end Erdos848
