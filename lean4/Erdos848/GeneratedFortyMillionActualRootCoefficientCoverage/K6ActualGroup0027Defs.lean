import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K6PrefixGroup0027Defs
import Erdos848.TailGlobalMixedSupportChecker

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k6PrefixGroup0027ActualRows : List (List Nat × Nat) :=
  [([3, 23, 29, 37, 41], 43),
    ([3, 23, 29, 37, 43], 47),
    ([3, 23, 29, 37, 47], 53),
    ([3, 23, 29, 41, 43], 47),
    ([3, 23, 31, 37, 41], 43),
    ([3, 23, 31, 37, 43], 47),
    ([3, 23, 31, 37, 47], 53),
    ([3, 23, 31, 41, 43], 47),
    ([3, 29, 31, 37, 41], 43)]

theorem k6PrefixGroup0027ActualRows_eq_filter :
    k6PrefixGroup0027ActualRows =
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.k6PrefixGroup0027.filter (fun row =>
        decide (Erdos848.globalMixedSupportEndpoint row.1 <
          200_000_000)) := by
  rfl

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
