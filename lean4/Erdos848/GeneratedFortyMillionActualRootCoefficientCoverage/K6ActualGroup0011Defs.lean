import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K6PrefixGroup0011Defs
import Erdos848.TailGlobalMixedSupportChecker

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k6PrefixGroup0011ActualRows : List (List Nat × Nat) :=
  [([3, 7, 43, 47, 53], 59),
    ([3, 7, 43, 47, 59], 61),
    ([3, 7, 43, 47, 61], 67),
    ([3, 7, 43, 53, 59], 61),
    ([3, 7, 43, 53, 61], 67),
    ([3, 7, 47, 53, 59], 61)]

theorem k6PrefixGroup0011ActualRows_eq_filter :
    k6PrefixGroup0011ActualRows =
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.k6PrefixGroup0011.filter (fun row =>
        decide (Erdos848.globalMixedSupportEndpoint row.1 <
          200_000_000)) := by
  rfl

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
