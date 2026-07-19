import Erdos848.ProblemCore

namespace Erdos848

/-!
## Lightweight exact assembly target

This module contains only the literal range propositions and their all-`N`
assembly.  In particular it does not import the large asymptotic development,
so the finite certificate and Hall-sieve routes can be checked independently.
-/

def Erdos848PrefixClose : Prop :=
  ∀ N, N ≤ 1_500_000 → OriginalProblem848Statement N

def Erdos848FirstLowClose : Prop :=
  ∀ N, 1_500_000 ≤ N → N < 3_000_000 → OriginalProblem848Statement N

def Erdos848SecondLowClose : Prop :=
  ∀ N, 3_000_000 ≤ N → N < 5_000_000 → OriginalProblem848Statement N

def Erdos848FiveMillionTailClose : Prop :=
  ∀ N, 5_000_000 ≤ N → OriginalProblem848Statement N

/-- Kernel-only assembly of the archived four literal ranges. -/
theorem erdos848_full_of_four_range_close
    (hprefix : Erdos848PrefixClose)
    (hfirst : Erdos848FirstLowClose)
    (hsecond : Erdos848SecondLowClose)
    (htail : Erdos848FiveMillionTailClose) :
    ∀ N, OriginalProblem848Statement N := by
  intro N
  by_cases h₀ : N < 1_500_000
  · exact hprefix N (Nat.le_of_lt h₀)
  by_cases h₁ : N < 3_000_000
  · exact hfirst N (Nat.le_of_not_gt h₀) h₁
  by_cases h₂ : N < 5_000_000
  · exact hsecond N (Nat.le_of_not_gt h₁) h₂
  · exact htail N (Nat.le_of_not_gt h₂)

end Erdos848
