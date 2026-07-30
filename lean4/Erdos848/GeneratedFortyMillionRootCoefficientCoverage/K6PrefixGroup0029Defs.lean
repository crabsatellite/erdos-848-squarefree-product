import Erdos848.TailFortyMillionRootCoefficientChecker
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.Constants
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K6PrefixGroup0029

namespace Erdos848.GeneratedFortyMillionRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k6PrefixGroup0029RootCoefficientPasses (row : List Nat × Nat) : Bool :=
  Erdos848.fortyMillionRootCorePrefixPasses coefficientCeiling
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.k6PrefixGroup0029NormalLookup
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.k6PrefixGroup0029TwistLookup 6
    (max 5_000_000 (row.1.prod * row.2)) row.1

end Erdos848.GeneratedFortyMillionRootCoefficientCoverage
