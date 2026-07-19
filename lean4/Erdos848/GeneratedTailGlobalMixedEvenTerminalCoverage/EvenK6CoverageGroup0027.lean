import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK6Selector
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K6PrefixGroup0027

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK6CoverageGroup0027Prefixes : List (List Nat) :=
  Erdos848.GeneratedTailGlobalMixedSupportCoverage.k6PrefixGroup0027.map Prod.fst

theorem evenK6CoverageGroup0027_passes :
    evenK6CoverageGroup0027Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses
        6 evenK6Selector EvenK6Choice.terminal) = true := by
  rfl

#print axioms evenK6CoverageGroup0027_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
