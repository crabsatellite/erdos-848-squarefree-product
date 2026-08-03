import Erdos848.GeneratedFiveMillionPrefixTrace.Certificate
import Erdos848.MainTheoremCore

namespace Erdos848

/-- The single exact kernel-checked endpoint for the finite range used by the
published proof. -/
theorem erdos848_through_five_million :
    ∀ N, N ≤ 5_000_000 → OriginalProblem848Statement N :=
  GeneratedFiveMillionPrefixTrace.closeThroughFiveMillion

/-- A restricted consequence for `N ≤ 1,500,000`. -/
theorem erdos848_prefix_close : Erdos848PrefixClose :=
  fun N hN => erdos848_through_five_million N (hN.trans (by norm_num))

/-- A restricted consequence for `1,500,000 ≤ N < 3,000,000`. -/
theorem erdos848_first_low_close : Erdos848FirstLowClose := by
  intro N _hLower hUpper
  exact erdos848_through_five_million N (by omega)

/-- A restricted consequence for `3,000,000 ≤ N < 5,000,000`. -/
theorem erdos848_second_low_close : Erdos848SecondLowClose := by
  intro N _hLower hUpper
  exact erdos848_through_five_million N (by omega)

/-- Minimal all-`N` assembly after kernelizing the entire finite prefix.  The
only remaining mathematical input is the tail cut
`N ≥ 5_000_000`; no intermediate range premise survives. -/
theorem erdos848_full_of_five_million_tail
    (htail : Erdos848FiveMillionTailClose) :
    ∀ N, OriginalProblem848Statement N := by
  intro N
  by_cases hN : N ≤ 5_000_000
  · exact erdos848_through_five_million N hN
  · exact htail N (by omega)

end Erdos848
