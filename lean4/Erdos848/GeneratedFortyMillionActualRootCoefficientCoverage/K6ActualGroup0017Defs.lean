import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K6PrefixGroup0017Defs
import Erdos848.TailGlobalMixedSupportChecker

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k6PrefixGroup0017ActualRows : List (List Nat × Nat) :=
  [([3, 11, 29, 47, 53], 59),
    ([3, 11, 29, 47, 59], 61),
    ([3, 11, 29, 47, 61], 67),
    ([3, 11, 29, 53, 59], 61),
    ([3, 11, 31, 37, 41], 43),
    ([3, 11, 31, 37, 43], 47),
    ([3, 11, 31, 37, 47], 53),
    ([3, 11, 31, 37, 53], 59),
    ([3, 11, 31, 37, 59], 61),
    ([3, 11, 31, 37, 61], 67),
    ([3, 11, 31, 37, 67], 71),
    ([3, 11, 31, 37, 71], 73),
    ([3, 11, 31, 41, 43], 47),
    ([3, 11, 31, 41, 47], 53),
    ([3, 11, 31, 41, 53], 59),
    ([3, 11, 31, 41, 59], 61),
    ([3, 11, 31, 41, 61], 67),
    ([3, 11, 31, 41, 67], 71),
    ([3, 11, 31, 43, 47], 53),
    ([3, 11, 31, 43, 53], 59),
    ([3, 11, 31, 43, 59], 61),
    ([3, 11, 31, 43, 61], 67),
    ([3, 11, 31, 47, 53], 59),
    ([3, 11, 31, 47, 59], 61),
    ([3, 11, 31, 47, 61], 67),
    ([3, 11, 31, 53, 59], 61),
    ([3, 11, 37, 41, 43], 47),
    ([3, 11, 37, 41, 47], 53),
    ([3, 11, 37, 41, 53], 59),
    ([3, 11, 37, 41, 59], 61),
    ([3, 11, 37, 43, 47], 53),
    ([3, 11, 37, 43, 53], 59),
    ([3, 11, 37, 43, 59], 61),
    ([3, 11, 37, 47, 53], 59)]

theorem k6PrefixGroup0017ActualRows_eq_filter :
    k6PrefixGroup0017ActualRows =
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.k6PrefixGroup0017.filter (fun row =>
        decide (Erdos848.globalMixedSupportEndpoint row.1 <
          200_000_000)) := by
  rfl

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
