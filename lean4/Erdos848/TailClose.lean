import Erdos848.PrefixClose
import Erdos848.TailGlobalMixedPairTailReduction

namespace Erdos848

/-!
# Minimal two-range assembly for Erdős 848

The finite certificate already covers every `N ≤ 5,000,000`.  The direct
mixed-tail reduction has no intermediate interval premise.  Its two honest
terminal inputs are bundled by
`Erdos848GlobalMixedBranchedPairTailTerminalBound`: even valuation classes
pay the global off-base diagonal, while odd classes retain the literal Hall
residual.
-/

/-- The branch-aware mixed theorem has exactly the public five-million tail
type; this theorem records the interface equality without introducing a new
cut. -/
theorem erdos848_five_million_tail_of_branchedPairTailTerminalBound
    (hterminal : Erdos848GlobalMixedBranchedPairTailTerminalBound) :
    Erdos848FiveMillionTailClose :=
  erdos848GlobalMixedTailClose_of_branchedPairTailTerminalBound hterminal

/-- Final kernel-only assembly.  There are exactly two inputs in its proof
graph: the checked finite prefix and the bundled branch-aware terminal. -/
theorem erdos848_full_of_branchedPairTailTerminalBound
    (hterminal : Erdos848GlobalMixedBranchedPairTailTerminalBound) :
    ∀ N, OriginalProblem848Statement N :=
  erdos848_full_of_five_million_tail
    (erdos848_five_million_tail_of_branchedPairTailTerminalBound hterminal)

#print axioms erdos848_five_million_tail_of_branchedPairTailTerminalBound
#print axioms erdos848_full_of_branchedPairTailTerminalBound

end Erdos848
