import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K6PrefixGroup0022Defs
import Erdos848.TailGlobalMixedSupportChecker

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k6PrefixGroup0022ActualRows : List (List Nat × Nat) :=
  [([3, 13, 37, 41, 43], 47),
    ([3, 13, 37, 41, 47], 53),
    ([3, 13, 37, 41, 53], 59),
    ([3, 13, 37, 43, 47], 53),
    ([3, 13, 37, 43, 53], 59),
    ([3, 13, 41, 43, 47], 53)]

theorem k6PrefixGroup0022ActualRows_eq_filter :
    k6PrefixGroup0022ActualRows =
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.k6PrefixGroup0022.filter (fun row =>
        decide (Erdos848.globalMixedSupportEndpoint row.1 <
          200_000_000)) := by
  rfl

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
