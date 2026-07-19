import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK7Selector
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K7PrefixGroup0001

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK7CoverageGroup0001Prefixes : List (List Nat) :=
  Erdos848.GeneratedTailGlobalMixedSupportCoverage.k7PrefixGroup0001.map Prod.fst

theorem evenK7CoverageGroup0001_passes :
    evenK7CoverageGroup0001Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses
        7 evenK7Selector EvenK7Choice.terminal) = true := by
  rfl

#print axioms evenK7CoverageGroup0001_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
