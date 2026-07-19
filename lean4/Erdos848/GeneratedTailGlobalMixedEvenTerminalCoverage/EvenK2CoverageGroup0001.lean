import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK2Selector
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K2PrefixGroup0001

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK2CoverageGroup0001Prefixes : List (List Nat) :=
  Erdos848.GeneratedTailGlobalMixedSupportCoverage.k2PrefixGroup0001.map Prod.fst

theorem evenK2CoverageGroup0001_passes :
    evenK2CoverageGroup0001Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses
        2 evenK2Selector EvenK2Choice.terminal) = true := by
  rfl

#print axioms evenK2CoverageGroup0001_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
