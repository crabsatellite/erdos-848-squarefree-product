import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK3Selector
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K3PrefixGroup0026

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK3CoverageGroup0026Prefixes : List (List Nat) :=
  Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0026.map Prod.fst

theorem evenK3CoverageGroup0026_passes :
    evenK3CoverageGroup0026Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses
        3 evenK3Selector EvenK3Choice.terminal) = true := by
  rfl

#print axioms evenK3CoverageGroup0026_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
