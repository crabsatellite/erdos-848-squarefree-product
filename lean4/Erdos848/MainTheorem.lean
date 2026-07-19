import Erdos848.Asymptotic
import Erdos848.MainTheoremCore

namespace Erdos848

/-- ASCII publication aliases for the two sharp constructions. -/
theorem A7_has_property_public (N : ℕ) : NonSquarefreeProductProp (A₇ N) :=
  A₇_has_property N

theorem A18_has_property_public (N : ℕ) : NonSquarefreeProductProp (A₁₈ N) :=
  A₁₈_has_property N

lemma A7_card_public (N : ℕ) : (A₇ N).card = (N + 17) / 25 := A₇_card N

lemma A18_card_public (N : ℕ) : (A₁₈ N).card = (N + 6) / 25 := A₁₈_card N

lemma A18_card_le_A7_public (N : ℕ) : (A₁₈ N).card ≤ (A₇ N).card :=
  A₁₈_card_le_A₇ N

lemma originalA7_eq_range (N : ℕ) : OriginalA7 N = A₇ (N + 1) := by
  ext n
  simp only [OriginalA7, A₇, Finset.mem_filter, Finset.mem_Icc,
    Finset.mem_range]
  constructor
  · rintro ⟨⟨hn1, hnN⟩, hnmod⟩
    exact ⟨Nat.lt_succ_of_le hnN, hnmod⟩
  · rintro ⟨hnN, hnmod⟩
    have hnpos : 0 < n := by
      by_contra hn
      have hnzero : n = 0 := Nat.eq_zero_of_not_pos hn
      simp [hnzero] at hnmod
    exact ⟨⟨hnpos, Nat.le_of_lt_succ hnN⟩, hnmod⟩

/-- `range (N+1)` and `{1,...,N}` give the same 848 statement because zero
cannot occur in an admissible set. -/
theorem original_of_range_succ {N : ℕ} (h : Problem848Statement (N + 1)) :
    OriginalProblem848Statement N := by
  intro A hA hprop
  have hArange : A ⊆ Finset.range (N + 1) := by
    intro n hn
    have hnIcc := hA hn
    simp only [Finset.mem_Icc] at hnIcc
    simpa only [Finset.mem_range] using Nat.lt_succ_of_le hnIcc.2
  have hcard := h A hArange hprop
  change A.card ≤ (OriginalA7 N).card
  rw [originalA7_eq_range]
  exact hcard

/-- Kernel-checked asymptotic form of the original Erdős 848 statement. -/
theorem erdos848_original_asymptotic :
    ∃ N₀ : ℕ, ∀ N ≥ N₀, OriginalProblem848Statement N := by
  obtain ⟨N₀, hN₀⟩ := problem_848_asymptotic
  refine ⟨N₀, ?_⟩
  intro N hN
  exact original_of_range_succ (hN₀ (N + 1) (le_trans hN (Nat.le_succ N)))

/-- The imported exact checks cover the literal intervals through 49 and 99. -/
theorem erdos848_original_N49 : OriginalProblem848Statement 49 := by
  exact original_of_range_succ problem_848_statement_50

theorem erdos848_original_N99 : OriginalProblem848Statement 99 := by
  exact original_of_range_succ problem_848_statement_100

/-- Once an asymptotic threshold is fixed, the all-N conjecture is exactly a
finite-prefix obligation below that same threshold. -/
theorem erdos848_finite_reduction :
    ∃ N₀ : ℕ,
      (∀ N ≥ N₀, OriginalProblem848Statement N) ∧
      ((∀ N, OriginalProblem848Statement N) ↔
        ∀ N < N₀, OriginalProblem848Statement N) := by
  obtain ⟨N₀, hlarge⟩ := erdos848_original_asymptotic
  refine ⟨N₀, hlarge, ?_⟩
  constructor
  · intro hall N _hN
    exact hall N
  · intro hsmall N
    by_cases hN : N < N₀
    · exact hsmall N hN
    · exact hlarge N (Nat.le_of_not_gt hN)

namespace ArchivedFourRange

/-! ## Archived four-range assembly target

These propositions use the literal problem statement.  They expose the four
premises claimed by the archived manuscript without introducing any project
axiom or moving the mathematical cut.
-/

def Erdos848PrefixClose : Prop :=
  ∀ N, N ≤ 1_500_000 → OriginalProblem848Statement N

def Erdos848FirstLowClose : Prop :=
  ∀ N, 1_500_000 ≤ N → N < 3_000_000 → OriginalProblem848Statement N

def Erdos848SecondLowClose : Prop :=
  ∀ N, 3_000_000 ≤ N → N < 5_000_000 → OriginalProblem848Statement N

def Erdos848FiveMillionTailClose : Prop :=
  ∀ N, 5_000_000 ≤ N → OriginalProblem848Statement N

/-- A checked online-colouring certificate through the archived cutoff closes
the first of the four literal ranges, including the vacuous `N = 0` case. -/
theorem erdos848PrefixClose_of_colouringCertificate
    (certificate : PrefixColouringCertificate 1_500_000) :
    Erdos848PrefixClose := by
  intro N hN
  by_cases hzero : N = 0
  · simpa [hzero] using erdos848_original_N0
  · exact originalProblem_prefix_of_colouringCertificate certificate N
      (Nat.one_le_iff_ne_zero.mpr hzero) hN

/-- Kernel-checked assembly of the archived four-range route.  The remaining
work is exactly to construct the four arguments, not to change this endpoint. -/
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

end ArchivedFourRange

end Erdos848
