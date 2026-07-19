import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5Selector
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K5PrefixGroup0072

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK5CoverageGroup0072Prefixes : List (List Nat) :=
  Erdos848.GeneratedTailGlobalMixedSupportCoverage.k5PrefixGroup0072.map Prod.fst

theorem evenK5CoverageGroup0072_passes :
    evenK5CoverageGroup0072Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses
        5 evenK5Selector EvenK5Choice.terminal) = true := by
  rfl

#print axioms evenK5CoverageGroup0072_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
