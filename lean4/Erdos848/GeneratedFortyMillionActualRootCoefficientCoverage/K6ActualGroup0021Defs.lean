import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K6PrefixGroup0021Defs
import Erdos848.TailGlobalMixedSupportChecker

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k6PrefixGroup0021ActualRows : List (List Nat × Nat) :=
  [([3, 13, 23, 47, 53], 59),
    ([3, 13, 23, 47, 59], 61),
    ([3, 13, 23, 47, 61], 67),
    ([3, 13, 23, 53, 59], 61),
    ([3, 13, 23, 53, 61], 67),
    ([3, 13, 29, 31, 37], 41),
    ([3, 13, 29, 31, 41], 43),
    ([3, 13, 29, 31, 43], 47),
    ([3, 13, 29, 31, 47], 53),
    ([3, 13, 29, 31, 53], 59),
    ([3, 13, 29, 31, 59], 61),
    ([3, 13, 29, 31, 61], 67),
    ([3, 13, 29, 31, 67], 71),
    ([3, 13, 29, 31, 71], 73),
    ([3, 13, 29, 37, 41], 43),
    ([3, 13, 29, 37, 43], 47),
    ([3, 13, 29, 37, 47], 53),
    ([3, 13, 29, 37, 53], 59),
    ([3, 13, 29, 37, 59], 61),
    ([3, 13, 29, 37, 61], 67),
    ([3, 13, 29, 37, 67], 71),
    ([3, 13, 29, 41, 43], 47),
    ([3, 13, 29, 41, 47], 53),
    ([3, 13, 29, 41, 53], 59),
    ([3, 13, 29, 41, 59], 61),
    ([3, 13, 29, 41, 61], 67),
    ([3, 13, 29, 43, 47], 53),
    ([3, 13, 29, 43, 53], 59),
    ([3, 13, 29, 43, 59], 61),
    ([3, 13, 29, 43, 61], 67),
    ([3, 13, 29, 47, 53], 59),
    ([3, 13, 29, 47, 59], 61),
    ([3, 13, 31, 37, 41], 43),
    ([3, 13, 31, 37, 43], 47),
    ([3, 13, 31, 37, 47], 53),
    ([3, 13, 31, 37, 53], 59),
    ([3, 13, 31, 37, 59], 61),
    ([3, 13, 31, 37, 61], 67),
    ([3, 13, 31, 41, 43], 47),
    ([3, 13, 31, 41, 47], 53),
    ([3, 13, 31, 41, 53], 59),
    ([3, 13, 31, 41, 59], 61),
    ([3, 13, 31, 43, 47], 53),
    ([3, 13, 31, 43, 53], 59),
    ([3, 13, 31, 43, 59], 61),
    ([3, 13, 31, 47, 53], 59)]

theorem k6PrefixGroup0021ActualRows_eq_filter :
    k6PrefixGroup0021ActualRows =
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.k6PrefixGroup0021.filter (fun row =>
        decide (Erdos848.globalMixedSupportEndpoint row.1 <
          200_000_000)) := by
  rfl

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
