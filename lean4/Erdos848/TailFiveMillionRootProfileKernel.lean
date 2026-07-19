import Erdos848.TailFiveMillionRootProfileClose
import Erdos848.TailFiveMillionRootProfileSupport
import Erdos848.TailFiveMillionSupport

namespace Erdos848

/-! ## Kernel closure of the complete odd-root profile -/

theorem transformedRootRow_mono_survivors
    {N Y primeDelta height survivors₁ survivors₂ : ℕ}
    (hN : 0 < N)
    (hSurvivors : survivors₁ ≤ survivors₂) :
    transformedRootRow N Y primeDelta height survivors₁ ≤
      transformedRootRow N Y primeDelta height survivors₂ := by
  have hNumerator :
      6 * primeDelta + 6 * height * survivors₁ ≤
        6 * primeDelta + 6 * height * survivors₂ := by
    exact Nat.add_le_add_left
      (Nat.mul_le_mul_left (6 * height) hSurvivors) (6 * primeDelta)
  have hNQ : (0 : ℚ) < N := by exact_mod_cast hN
  have hFirst :
      ((6 * primeDelta + 6 * height * survivors₁ : ℕ) : ℚ) / N ≤
        ((6 * primeDelta + 6 * height * survivors₂ : ℕ) : ℚ) / N := by
    exact div_le_div_of_nonneg_right (by exact_mod_cast hNumerator) hNQ.le
  unfold transformedRootRow
  linarith

private theorem survivor_bound_of_coset
    {support : List ℕ} {bound : ℕ} {squareCoset : Bool}
    (hBound : oddRootWordSurvivorCount support true ≤ bound ∧
      oddRootWordSurvivorCount support false ≤ bound) :
    oddRootWordSurvivorCount support squareCoset ≤ bound := by
  cases squareCoset
  · exact hBound.2
  · exact hBound.1

theorem fiveMillionOddRootK0_support_row_le
    (N : ℕ) (squareCoset : Bool)
    (hLower : 5_000_000 ≤ N) (hUpper : N < 10_000_000) :
    transformedRootRow N (N / 49)
        (Nat.primeCounting (N / 49) - 4) 2
        (oddRootWordSurvivorCount [] squareCoset) ≤
      fiveMillionOddRoot7Envelope := by
  have hSurvivors : oddRootWordSurvivorCount [] squareCoset ≤ 961 := by
    cases squareCoset
    · rw [fiveMillionOddRoot_empty_support_exact.2]
      norm_num
    · rw [fiveMillionOddRoot_empty_support_exact.1]
  exact (transformedRootRow_mono_survivors (by omega) hSurvivors).trans
    ((fiveMillionOddRootK0_le_controlling N hLower).trans
      (fiveMillionOddRoot7_all_N_le N hLower hUpper))

theorem fiveMillionOddRootK1_support_row_le
    (N : ℕ) (squareCoset : Bool)
    (hLower : 5_000_000 ≤ N) (hUpper : N < 10_000_000) :
    transformedRootRow N (N / 49)
        (Nat.primeCounting (N / 49) - 4) 4
        (oddRootWordSurvivorCount [] squareCoset) ≤
      fiveMillionOddRoot7Envelope := by
  have hSurvivors : oddRootWordSurvivorCount [] squareCoset ≤ 961 := by
    cases squareCoset
    · rw [fiveMillionOddRoot_empty_support_exact.2]
      norm_num
    · rw [fiveMillionOddRoot_empty_support_exact.1]
  exact (transformedRootRow_mono_survivors (by omega) hSurvivors).trans
    ((fiveMillionOddRootK1_le_controlling N hLower).trans
      (fiveMillionOddRoot7_all_N_le N hLower hUpper))

theorem fiveMillionOddRootK2_support_row_le
    (N : ℕ) (support : List ℕ) (squareCoset : Bool)
    (hLower : 5_000_000 ≤ N) (hUpper : N < 10_000_000)
    (hSupport : support ∈ fiveMillionOddRootK2FeasiblePrefixes) :
    transformedRootRow N (N / 49)
        (Nat.primeCounting (N / 49) - 4) 8
        (oddRootWordSurvivorCount support squareCoset) ≤
      fiveMillionOddRoot7Envelope := by
  have hSurvivors : oddRootWordSurvivorCount support squareCoset ≤ 522 :=
    survivor_bound_of_coset
      (fiveMillionOddRootK2_feasible_support_bound hSupport)
  exact (transformedRootRow_mono_survivors (by omega) hSurvivors).trans
    ((fiveMillionOddRootK2_le_controlling N hLower).trans
      (fiveMillionOddRoot7_all_N_le N hLower hUpper))

theorem fiveMillionOddRootK3_support_row_le
    (N : ℕ) (support : List ℕ) (squareCoset : Bool)
    (hLower : 5_000_000 ≤ N) (hUpper : N < 10_000_000)
    (hSupport : support ∈ fiveMillionOddRootK3FeasiblePrefixes) :
    transformedRootRow N (N / 49)
        (Nat.primeCounting (N / 49) - 4) 16
        (oddRootWordSurvivorCount support squareCoset) ≤
      fiveMillionOddRoot7Envelope := by
  have hSurvivors : oddRootWordSurvivorCount support squareCoset ≤ 278 :=
    survivor_bound_of_coset
      (fiveMillionOddRootK3_feasible_support_bound hSupport)
  exact (transformedRootRow_mono_survivors (by omega) hSurvivors).trans
    ((fiveMillionOddRootK3_le_controlling N hLower).trans
      (fiveMillionOddRoot7_all_N_le N hLower hUpper))

theorem fiveMillionOddRootK4_support_row_le
    (N : ℕ) (support : List ℕ) (squareCoset : Bool)
    (hLower : 5_000_000 ≤ N) (hUpper : N < 10_000_000)
    (hSupport : support ∈ fiveMillionOddRootK4FeasiblePrefixes) :
    transformedRootRow N (N / 49)
        (Nat.primeCounting (N / 49) - 4) 32
        (oddRootWordSurvivorCount support squareCoset) ≤
      fiveMillionOddRoot7Envelope := by
  have hSurvivors : oddRootWordSurvivorCount support squareCoset ≤ 143 :=
    survivor_bound_of_coset
      (fiveMillionOddRootK4_feasible_support_bound hSupport)
  exact (transformedRootRow_mono_survivors (by omega) hSurvivors).trans
    ((fiveMillionOddRootK4_le_controlling N hLower).trans
      (fiveMillionOddRoot7_all_N_le N hLower hUpper))

theorem fiveMillionOddRootK5_support_row_le
    (N : ℕ) (support : List ℕ) (squareCoset : Bool)
    (hLower : 5_000_000 ≤ N) (hUpper : N < 10_000_000)
    (hSupport : support ∈ fiveMillionOddRootFeasiblePrefixes) :
    transformedRootRow N (N / 49)
        (Nat.primeCounting (N / 49) - 4) 64
        (oddRootWordSurvivorCount support squareCoset) ≤
      fiveMillionOddRoot7Envelope := by
  have hSurvivors : oddRootWordSurvivorCount support squareCoset ≤ 70 :=
    survivor_bound_of_coset
      (fiveMillionOddRoot_feasible_support_bound hSupport)
  exact (transformedRootRow_mono_survivors (by omega) hSurvivors).trans
    (by simpa [fiveMillionOddRoot7Value] using
      fiveMillionOddRoot7_all_N_le N hLower hUpper)

theorem fiveMillionOddRootK6_support_row_le
    (N : ℕ) (support : List ℕ) (squareCoset : Bool)
    (hLower : 5_000_000 ≤ N) (hUpper : N < 10_000_000)
    (hSupport : support ∈ fiveMillionOddRootK6FeasiblePrefixes) :
    transformedRootRow N (N / 49)
        (Nat.primeCounting (N / 49) - 4) 128
        (oddRootWordSurvivorCount support squareCoset) ≤
      fiveMillionOddRoot7Envelope := by
  have hSurvivors : oddRootWordSurvivorCount support squareCoset ≤ 30 :=
    survivor_bound_of_coset
      (fiveMillionOddRootK6_feasible_support_bound hSupport)
  exact (transformedRootRow_mono_survivors (by omega) hSurvivors).trans
    ((fiveMillionOddRootK6_le_controlling N hLower).trans
      (fiveMillionOddRoot7_all_N_le N hLower hUpper))

/-- Exact finite classification consumed by the root-profile theorem.  The
next structural bridge only has to show that a root modulus produces one of
these seven cases; no numerical maximization remains behind the interface. -/
inductive FiveMillionOddRootProfileCase : ℕ → List ℕ → Prop
  | k0 : FiveMillionOddRootProfileCase 0 []
  | k1 : FiveMillionOddRootProfileCase 1 []
  | k2 {support} (h : support ∈ fiveMillionOddRootK2FeasiblePrefixes) :
      FiveMillionOddRootProfileCase 2 support
  | k3 {support} (h : support ∈ fiveMillionOddRootK3FeasiblePrefixes) :
      FiveMillionOddRootProfileCase 3 support
  | k4 {support} (h : support ∈ fiveMillionOddRootK4FeasiblePrefixes) :
      FiveMillionOddRootProfileCase 4 support
  | k5 {support} (h : support ∈ fiveMillionOddRootFeasiblePrefixes) :
      FiveMillionOddRootProfileCase 5 support
  | k6 {support} (h : support ∈ fiveMillionOddRootK6FeasiblePrefixes) :
      FiveMillionOddRootProfileCase 6 support

theorem fiveMillionOddRootProfile_kernel_close
    (N k : ℕ) (support : List ℕ) (squareCoset : Bool)
    (hLower : 5_000_000 ≤ N) (hUpper : N < 10_000_000)
    (hCase : FiveMillionOddRootProfileCase k support) :
    transformedRootRow N (N / 49)
        (Nat.primeCounting (N / 49) - 4) (2 ^ (k + 1))
        (oddRootWordSurvivorCount support squareCoset) ≤
      fiveMillionOddRoot7Envelope := by
  cases hCase with
  | k0 => simpa using
      (fiveMillionOddRootK0_support_row_le N squareCoset hLower hUpper)
  | k1 => simpa using
      (fiveMillionOddRootK1_support_row_le N squareCoset hLower hUpper)
  | k2 h => simpa using
      (fiveMillionOddRootK2_support_row_le N support squareCoset hLower hUpper h)
  | k3 h => simpa using
      (fiveMillionOddRootK3_support_row_le N support squareCoset hLower hUpper h)
  | k4 h => simpa using
      (fiveMillionOddRootK4_support_row_le N support squareCoset hLower hUpper h)
  | k5 h => simpa using
      (fiveMillionOddRootK5_support_row_le N support squareCoset hLower hUpper h)
  | k6 h => simpa using
      (fiveMillionOddRootK6_support_row_le N support squareCoset hLower hUpper h)

#print axioms fiveMillionOddRootProfile_kernel_close

end Erdos848
