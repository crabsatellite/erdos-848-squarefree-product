import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K6PrefixGroup0010Defs
import Erdos848.TailGlobalMixedSupportChecker

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k6PrefixGroup0010ActualRows : List (List Nat × Nat) :=
  [([3, 7, 31, 59, 61], 67),
    ([3, 7, 31, 59, 67], 71),
    ([3, 7, 31, 59, 71], 73),
    ([3, 7, 31, 61, 67], 71),
    ([3, 7, 37, 41, 43], 47),
    ([3, 7, 37, 41, 47], 53),
    ([3, 7, 37, 41, 53], 59),
    ([3, 7, 37, 41, 59], 61),
    ([3, 7, 37, 41, 61], 67),
    ([3, 7, 37, 41, 67], 71),
    ([3, 7, 37, 41, 71], 73),
    ([3, 7, 37, 41, 73], 79),
    ([3, 7, 37, 43, 47], 53),
    ([3, 7, 37, 43, 53], 59),
    ([3, 7, 37, 43, 59], 61),
    ([3, 7, 37, 43, 61], 67),
    ([3, 7, 37, 43, 67], 71),
    ([3, 7, 37, 43, 71], 73),
    ([3, 7, 37, 43, 73], 79),
    ([3, 7, 37, 47, 53], 59),
    ([3, 7, 37, 47, 59], 61),
    ([3, 7, 37, 47, 61], 67),
    ([3, 7, 37, 47, 67], 71),
    ([3, 7, 37, 47, 71], 73),
    ([3, 7, 37, 53, 59], 61),
    ([3, 7, 37, 53, 61], 67),
    ([3, 7, 37, 53, 67], 71),
    ([3, 7, 37, 59, 61], 67),
    ([3, 7, 41, 43, 47], 53),
    ([3, 7, 41, 43, 53], 59),
    ([3, 7, 41, 43, 59], 61),
    ([3, 7, 41, 43, 61], 67),
    ([3, 7, 41, 43, 67], 71),
    ([3, 7, 41, 43, 71], 73),
    ([3, 7, 41, 47, 53], 59),
    ([3, 7, 41, 47, 59], 61),
    ([3, 7, 41, 47, 61], 67),
    ([3, 7, 41, 47, 67], 71),
    ([3, 7, 41, 53, 59], 61),
    ([3, 7, 41, 53, 61], 67)]

theorem k6PrefixGroup0010ActualRows_eq_filter :
    k6PrefixGroup0010ActualRows =
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.k6PrefixGroup0010.filter (fun row =>
        decide (Erdos848.globalMixedSupportEndpoint row.1 <
          200_000_000)) := by
  rfl

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
