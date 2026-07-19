import Erdos848.GeneratedFiveMillionPrefixTrace.Certificate
import Erdos848.MainTheoremCore

namespace Erdos848

/-- The single exact kernel-checked endpoint for the entire finite range used
by the public proof.  The three legacy range names below are only projections
of this theorem; they do not carry independent certificates. -/
theorem erdos848_through_five_million :
    ∀ N, N ≤ 5_000_000 → OriginalProblem848Statement N :=
  GeneratedFiveMillionPrefixTrace.closeThroughFiveMillion

/-- The exact kernel-checked close of the archived trace range `N ≤ 1,500,000`. -/
theorem erdos848_prefix_close : Erdos848PrefixClose :=
  fun N hN => erdos848_through_five_million N (hN.trans (by norm_num))

/-- The former first low block is now a direct projection of the exact
five-million prefix certificate. -/
theorem erdos848_first_low_close : Erdos848FirstLowClose := by
  intro N _hLower hUpper
  exact erdos848_through_five_million N (by omega)

/-- The former second low block is now a direct projection of the exact
five-million prefix certificate. -/
theorem erdos848_second_low_close : Erdos848SecondLowClose := by
  intro N _hLower hUpper
  exact erdos848_through_five_million N (by omega)

/-- Minimal all-`N` assembly after kernelizing the entire finite prefix.  The
only remaining mathematical input is the literal unchanged tail cut
`N ≥ 5_000_000`; no intermediate range premise survives. -/
theorem erdos848_full_of_five_million_tail
    (htail : Erdos848FiveMillionTailClose) :
    ∀ N, OriginalProblem848Statement N := by
  intro N
  by_cases hN : N ≤ 5_000_000
  · exact erdos848_through_five_million N hN
  · exact htail N (by omega)

end Erdos848
