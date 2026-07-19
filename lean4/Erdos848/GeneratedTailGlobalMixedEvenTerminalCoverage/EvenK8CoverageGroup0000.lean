import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK8Selector
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K8PrefixGroup0000

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK8CoverageGroup0000Prefixes : List (List Nat) :=
  Erdos848.GeneratedTailGlobalMixedSupportCoverage.k8PrefixGroup0000.map Prod.fst

theorem evenK8CoverageGroup0000_passes :
    evenK8CoverageGroup0000Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses
        8 evenK8Selector EvenK8Choice.terminal) = true := by
  rfl

#print axioms evenK8CoverageGroup0000_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
