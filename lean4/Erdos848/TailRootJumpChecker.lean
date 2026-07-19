import Erdos848.TailFiveMillionBudget
import Erdos848.TailPrimeRankChecker

namespace Erdos848

/-!
## Exact prime-jump predicate for the controlling `k = 5` root row

At a prime-count jump `N = 49 p`, the global rank of `p` is `π(p)`.  The
Boolean predicate below is the literal rational inequality checked by the
generated block certificates.
-/

def fiveMillionOddRoot7JumpClearedLeft (p primeRank : ℕ) : ℕ :=
  25 * (6 * (primeRank - 4) + 26_880) * p +
    37_632 * p + 38_400

def fiveMillionOddRoot7JumpPasses (p primeRank : ℕ) : Bool :=
  decide (
    5_000_000 ≤ 49 * p →
    49 * p < 10_000_000 →
    12_755_647_965_025 * fiveMillionOddRoot7JumpClearedLeft p primeRank ≤
      221_926_420_176 * 1_225 * p * p)

theorem fiveMillionOddRoot7JumpPasses_sound
    {p primeRank : ℕ}
    (hpass : fiveMillionOddRoot7JumpPasses p primeRank = true)
    (hlower : 5_000_000 ≤ 49 * p)
    (hupper : 49 * p < 10_000_000) :
    transformedRootRow (49 * p) p (primeRank - 4)
      fiveMillionOddRoot7Height fiveMillionOddRoot7Survivors ≤
        fiveMillionOddRoot7Envelope := by
  have hp : 0 < p := by omega
  have hinteger := (of_decide_eq_true hpass) hlower hupper
  have hcast :
      (12_755_647_965_025 : ℚ) *
          (fiveMillionOddRoot7JumpClearedLeft p primeRank : ℚ) ≤
        (221_926_420_176 * 1_225 * p * p : ℕ) := by
    exact_mod_cast hinteger
  have hrow :
      transformedRootRow (49 * p) p (primeRank - 4)
          fiveMillionOddRoot7Height fiveMillionOddRoot7Survivors =
        (fiveMillionOddRoot7JumpClearedLeft p primeRank : ℚ) /
          (1_225 * p * p : ℕ) := by
    unfold transformedRootRow fiveMillionOddRoot7JumpClearedLeft
    norm_num [fiveMillionOddRoot7Height, fiveMillionOddRoot7Survivors]
    field_simp
    ring
  rw [hrow]
  change
    (fiveMillionOddRoot7JumpClearedLeft p primeRank : ℚ) /
        (1_225 * p * p : ℕ) ≤
      (221_926_420_176 : ℚ) / 12_755_647_965_025
  rw [div_le_div_iff₀ (by positivity) (by norm_num)]
  norm_num [mul_comm, mul_left_comm, mul_assoc] at hcast ⊢
  exact hcast

end Erdos848
