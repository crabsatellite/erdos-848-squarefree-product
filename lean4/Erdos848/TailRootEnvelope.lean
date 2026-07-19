import Erdos848.TailQuadraticResidue

namespace Erdos848

/-!
Exact rational form of one transformed-root row.  Rewriting the producer's
formula exposes three nonnegative reciprocal terms, making monotonicity
between prime-count jumps a kernel theorem rather than an assumption about a
floating-point scan.
-/

def transformedRootRow
    (N Y primeDelta height survivors : ℕ) : ℚ :=
  (6 * primeDelta + 6 * height * survivors : ℕ) / (N : ℚ) +
    (12 * height : ℕ) / (25 * Y : ℚ) +
    (24 * height : ℕ) / (Y * N : ℚ)

/-- Algebraic identity with the literal expression evaluated by
`exact_root_profile`. -/
theorem transformedRootRow_eq_producerFormula
    {N Y primeDelta height survivors : ℕ}
    (hN : 0 < N) (hY : 0 < Y) :
    transformedRootRow N Y primeDelta height survivors =
      (6 * primeDelta : ℕ) / (N : ℚ) +
      6 * height *
        (survivors + 2 * ((N : ℚ) / 25 + 2) / Y) / N := by
  unfold transformedRootRow
  have hNQ : (N : ℚ) ≠ 0 := by exact_mod_cast hN.ne'
  have hYQ : (Y : ℚ) ≠ 0 := by exact_mod_cast hY.ne'
  field_simp
  push_cast
  ring

/-- With the prime count and support row fixed, increasing `N` and
`Y = floor(N/split)` can only decrease the transformed-root payment. -/
theorem transformedRootRow_antitone
    {N₁ N₂ Y₁ Y₂ primeDelta height survivors : ℕ}
    (hN₁ : 0 < N₁) (hY₁ : 0 < Y₁)
    (hN : N₁ ≤ N₂) (hY : Y₁ ≤ Y₂) :
    transformedRootRow N₂ Y₂ primeDelta height survivors ≤
      transformedRootRow N₁ Y₁ primeDelta height survivors := by
  have hN₂ : 0 < N₂ := lt_of_lt_of_le hN₁ hN
  have hY₂ : 0 < Y₂ := lt_of_lt_of_le hY₁ hY
  have hNQ : (0 : ℚ) < N₁ := by exact_mod_cast hN₁
  have hNQ₂ : (0 : ℚ) < N₂ := by exact_mod_cast hN₂
  have hYQ : (0 : ℚ) < Y₁ := by exact_mod_cast hY₁
  have hYQ₂ : (0 : ℚ) < Y₂ := by exact_mod_cast hY₂
  have hNcast : (N₁ : ℚ) ≤ N₂ := by exact_mod_cast hN
  have hYcast : (Y₁ : ℚ) ≤ Y₂ := by exact_mod_cast hY
  have hYN : (Y₁ * N₁ : ℚ) ≤ Y₂ * N₂ := by
    exact_mod_cast Nat.mul_le_mul hY hN
  have hYNpos : (0 : ℚ) < Y₁ * N₁ := mul_pos hYQ hNQ
  have hYNpos₂ : (0 : ℚ) < Y₂ * N₂ := mul_pos hYQ₂ hNQ₂
  unfold transformedRootRow
  have hfirst :
      (6 * primeDelta + 6 * height * survivors : ℕ) / (N₂ : ℚ) ≤
        (6 * primeDelta + 6 * height * survivors : ℕ) / (N₁ : ℚ) := by
    exact div_le_div_of_nonneg_left (by positivity) hNQ hNcast
  have hsecond :
      (12 * height : ℕ) / (25 * Y₂ : ℚ) ≤
        (12 * height : ℕ) / (25 * Y₁ : ℚ) := by
    apply div_le_div_of_nonneg_left (by positivity) (by positivity)
    exact mul_le_mul_of_nonneg_left hYcast (by norm_num)
  have hthird :
      (24 * height : ℕ) / (Y₂ * N₂ : ℚ) ≤
        (24 * height : ℕ) / (Y₁ * N₁ : ℚ) := by
    exact div_le_div_of_nonneg_left (by positivity) hYNpos hYN
  linarith

/-! ## Finite jump-scan closure -/

/-- A generic exact justification for a jump scan.  If every non-candidate
point is bounded by its predecessor, it is enough to check the lower endpoint
and the designated jump candidates. -/
theorem interval_bound_of_predecessor_descent
    {lower upper : ℕ} (value : ℕ → ℚ) (candidate : ℕ → Prop)
    [DecidablePred candidate] {bound : ℚ}
    (hlower : value lower ≤ bound)
    (hcandidate : ∀ N, lower < N → N < upper → candidate N →
      value N ≤ bound)
    (hdescent : ∀ N, lower < N → N < upper → ¬ candidate N →
      value N ≤ value (N - 1)) :
    ∀ N, lower ≤ N → N < upper → value N ≤ bound := by
  intro N
  induction N using Nat.strong_induction_on with
  | h N ih =>
      intro hLowerN hNUpper
      by_cases hEq : N = lower
      · simpa [hEq] using hlower
      have hLowerLt : lower < N := lt_of_le_of_ne hLowerN (Ne.symm hEq)
      by_cases hCandidate : candidate N
      · exact hcandidate N hLowerLt hNUpper hCandidate
      · have hstep := hdescent N hLowerLt hNUpper hCandidate
        have hpredLt : N - 1 < N := by omega
        have hLowerPred : lower ≤ N - 1 := by omega
        have hPredUpper : N - 1 < upper := by omega
        exact hstep.trans (ih (N - 1) hpredLt hLowerPred hPredUpper)

end Erdos848
