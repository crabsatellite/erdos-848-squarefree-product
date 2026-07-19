import Erdos848.GeneratedTailSupportProfileCoverage.Certificate

namespace Erdos848

/-! ## Kernel support bounds for every row of the five-million root profile -/

set_option maxRecDepth 1000000 in
theorem fiveMillionOddRoot_empty_support_exact :
    oddRootWordSurvivorCount [] true = 961 ∧
      oddRootWordSurvivorCount [] false = 960 := by
  decide

theorem fiveMillionOddRootK2_feasible_support_bound
    {support : List ℕ}
    (hSupport : support ∈ fiveMillionOddRootK2FeasiblePrefixes) :
    oddRootWordSurvivorCount support true ≤ 522 ∧
      oddRootWordSurvivorCount support false ≤ 522 := by
  have hpass := (List.all_eq_true.mp
    GeneratedTailSupportProfileCoverage.k2FeasiblePrefixes_pass)
    support hSupport
  simpa [fiveMillionOddRootProfilePrefixPasses] using hpass

theorem fiveMillionOddRootK3_feasible_support_bound
    {support : List ℕ}
    (hSupport : support ∈ fiveMillionOddRootK3FeasiblePrefixes) :
    oddRootWordSurvivorCount support true ≤ 278 ∧
      oddRootWordSurvivorCount support false ≤ 278 := by
  have hpass := (List.all_eq_true.mp
    GeneratedTailSupportProfileCoverage.k3FeasiblePrefixes_pass)
    support hSupport
  simpa [fiveMillionOddRootProfilePrefixPasses] using hpass

theorem fiveMillionOddRootK4_feasible_support_bound
    {support : List ℕ}
    (hSupport : support ∈ fiveMillionOddRootK4FeasiblePrefixes) :
    oddRootWordSurvivorCount support true ≤ 143 ∧
      oddRootWordSurvivorCount support false ≤ 143 := by
  have hpass := (List.all_eq_true.mp
    GeneratedTailSupportProfileCoverage.k4FeasiblePrefixes_pass)
    support hSupport
  simpa [fiveMillionOddRootProfilePrefixPasses] using hpass

theorem fiveMillionOddRootK6_feasible_support_bound
    {support : List ℕ}
    (hSupport : support ∈ fiveMillionOddRootK6FeasiblePrefixes) :
    oddRootWordSurvivorCount support true ≤ 30 ∧
      oddRootWordSurvivorCount support false ≤ 30 := by
  have hpass := (List.all_eq_true.mp
    GeneratedTailSupportProfileCoverage.k6FeasiblePrefixes_pass)
    support hSupport
  simpa [fiveMillionOddRootProfilePrefixPasses] using hpass

theorem fiveMillionOddRoot_profile_support_bounds :
    (oddRootWordSurvivorCount [] true = 961 ∧
      oddRootWordSurvivorCount [] false = 960) ∧
    (∀ support ∈ fiveMillionOddRootK2FeasiblePrefixes,
      oddRootWordSurvivorCount support true ≤ 522 ∧
        oddRootWordSurvivorCount support false ≤ 522) ∧
    (∀ support ∈ fiveMillionOddRootK3FeasiblePrefixes,
      oddRootWordSurvivorCount support true ≤ 278 ∧
        oddRootWordSurvivorCount support false ≤ 278) ∧
    (∀ support ∈ fiveMillionOddRootK4FeasiblePrefixes,
      oddRootWordSurvivorCount support true ≤ 143 ∧
        oddRootWordSurvivorCount support false ≤ 143) ∧
    (∀ support ∈ fiveMillionOddRootK6FeasiblePrefixes,
      oddRootWordSurvivorCount support true ≤ 30 ∧
        oddRootWordSurvivorCount support false ≤ 30) := by
  exact ⟨fiveMillionOddRoot_empty_support_exact,
    fun _ h => fiveMillionOddRootK2_feasible_support_bound h,
    fun _ h => fiveMillionOddRootK3_feasible_support_bound h,
    fun _ h => fiveMillionOddRootK4_feasible_support_bound h,
    fun _ h => fiveMillionOddRootK6_feasible_support_bound h⟩

#print axioms fiveMillionOddRoot_profile_support_bounds

end Erdos848
