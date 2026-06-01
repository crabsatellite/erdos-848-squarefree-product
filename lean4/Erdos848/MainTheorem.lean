import Erdos848.Infrastructure.HallExpansion

/-!
# Main theorem surface

The endpoint exposes the intended close of #848.  The current cut is not
"Sawhney verification"; it is the new Hall-expansion compression route plus
the finite residue and analytic ledgers that feed it.
-/

namespace Erdos848

/-- Erdos problem #848, reduced to the audit-visible Hall and residue cuts. -/
theorem erdos848_main : Erdos848FullClose := by
  exact And.intro
    atMostCandidateBound_of_current_cuts
    residueCandidateSevenSharp

end Erdos848
