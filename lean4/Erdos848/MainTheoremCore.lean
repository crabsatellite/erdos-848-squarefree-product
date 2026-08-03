import Erdos848.ProblemCore

namespace Erdos848

/-!
## Lightweight exact assembly target

This module contains only the range propositions and their all-`N`
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

/-- The first tail interval used by the audited paper. -/
def Erdos848PaperFiveToTenMillionClose : Prop :=
  ∀ N, 5_000_000 ≤ N → N < 10_000_000 → OriginalProblem848Statement N

/-- The second tail interval used by the audited paper. -/
def Erdos848PaperTenToTwentyMillionClose : Prop :=
  ∀ N, 10_000_000 ≤ N → N < 20_000_000 → OriginalProblem848Statement N

/-- The third tail interval used by the audited paper. -/
def Erdos848PaperTwentyToFortyMillionClose : Prop :=
  ∀ N, 20_000_000 ≤ N → N < 40_000_000 → OriginalProblem848Statement N

/-- The unbounded fourth tail interval used by the audited paper. -/
def Erdos848PaperFortyMillionTailClose : Prop :=
  ∀ N, 40_000_000 ≤ N → OriginalProblem848Statement N

/-- The four logically independent tail inputs in the audited paper splice. -/
structure Erdos848PaperTailCertificate : Prop where
  fiveToTen : Erdos848PaperFiveToTenMillionClose
  tenToTwenty : Erdos848PaperTenToTwentyMillionClose
  twentyToForty : Erdos848PaperTwentyToFortyMillionClose
  fortyMillionTail : Erdos848PaperFortyMillionTailClose

/-- Assemble the four paper tail intervals into the `N ≥ 5,000,000`
statement.  In particular, the first interval alone is not enough. -/
theorem erdos848_five_million_tail_of_paper_four_range_close
    (hfive : Erdos848PaperFiveToTenMillionClose)
    (hten : Erdos848PaperTenToTwentyMillionClose)
    (htwenty : Erdos848PaperTwentyToFortyMillionClose)
    (hforty : Erdos848PaperFortyMillionTailClose) :
    Erdos848FiveMillionTailClose := by
  intro N hN
  by_cases htenCut : N < 10_000_000
  · exact hfive N hN htenCut
  by_cases htwentyCut : N < 20_000_000
  · exact hten N (Nat.le_of_not_gt htenCut) htwentyCut
  by_cases hfortyCut : N < 40_000_000
  · exact htwenty N (Nat.le_of_not_gt htwentyCut) hfortyCut
  · exact hforty N (Nat.le_of_not_gt hfortyCut)

/-- Bundle form of the audited paper tail splice. -/
theorem Erdos848PaperTailCertificate.tailClose
    (certificate : Erdos848PaperTailCertificate) :
    Erdos848FiveMillionTailClose :=
  erdos848_five_million_tail_of_paper_four_range_close
    certificate.fiveToTen
    certificate.tenToTwenty
    certificate.twentyToForty
    certificate.fortyMillionTail

/-- Kernel-only assembly of the prefix, the two low ranges, and an already
assembled five-million tail. -/
theorem erdos848_full_of_prefix_low_tail_close
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

/-- Alternative assembly through the three finite subintervals
`prefix / low / low / N ≥ 5M`. -/
theorem erdos848_full_of_four_range_close
    (hprefix : Erdos848PrefixClose)
    (hfirst : Erdos848FirstLowClose)
    (hsecond : Erdos848SecondLowClose)
    (htail : Erdos848FiveMillionTailClose) :
    ∀ N, OriginalProblem848Statement N :=
  erdos848_full_of_prefix_low_tail_close hprefix hfirst hsecond htail

/-- Fine-grained assembly from three prefix pieces and four tail ranges. -/
theorem erdos848_full_of_paper_four_range_close
    (hprefix : Erdos848PrefixClose)
    (hfirst : Erdos848FirstLowClose)
    (hsecond : Erdos848SecondLowClose)
    (hfive : Erdos848PaperFiveToTenMillionClose)
    (hten : Erdos848PaperTenToTwentyMillionClose)
    (htwenty : Erdos848PaperTwentyToFortyMillionClose)
    (hforty : Erdos848PaperFortyMillionTailClose) :
    ∀ N, OriginalProblem848Statement N :=
  erdos848_full_of_prefix_low_tail_close hprefix hfirst hsecond
    (erdos848_five_million_tail_of_paper_four_range_close
      hfive hten htwenty hforty)

end Erdos848
