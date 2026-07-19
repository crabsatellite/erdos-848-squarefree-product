import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4Selector
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K4PrefixGroup0055

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK4CoverageGroup0055Prefixes : List (List Nat) :=
  Erdos848.GeneratedTailGlobalMixedSupportCoverage.k4PrefixGroup0055.map Prod.fst

theorem evenK4CoverageGroup0055_passes :
    evenK4CoverageGroup0055Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses
        4 evenK4Selector EvenK4Choice.terminal) = true := by
  rfl

#print axioms evenK4CoverageGroup0055_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
