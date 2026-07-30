import Erdos848.TailFortyMillionRootCoefficientChecker
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.Constants
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K4PrefixGroup0023

namespace Erdos848.GeneratedFortyMillionRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0023RootCoefficientPasses (row : List Nat × Nat) : Bool :=
  Erdos848.fortyMillionRootCorePrefixPasses coefficientCeiling
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.k4PrefixGroup0023NormalLookup
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.k4PrefixGroup0023TwistLookup 4
    (max 5_000_000 (row.1.prod * row.2)) row.1

end Erdos848.GeneratedFortyMillionRootCoefficientCoverage
