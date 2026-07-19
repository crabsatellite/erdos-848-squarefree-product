import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK3Selector
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K3PrefixGroup0016

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK3CoverageGroup0016Prefixes : List (List Nat) :=
  Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0016.map Prod.fst

theorem evenK3CoverageGroup0016_passes :
    evenK3CoverageGroup0016Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses
        3 evenK3Selector EvenK3Choice.terminal) = true := by
  rfl

#print axioms evenK3CoverageGroup0016_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
