import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K6PrefixGroup0025Defs
import Erdos848.TailGlobalMixedSupportChecker

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k6PrefixGroup0025ActualRows : List (List Nat × Nat) :=
  [([3, 19, 23, 29, 31], 37),
    ([3, 19, 23, 29, 37], 41),
    ([3, 19, 23, 29, 41], 43),
    ([3, 19, 23, 29, 43], 47),
    ([3, 19, 23, 29, 47], 53),
    ([3, 19, 23, 29, 53], 59),
    ([3, 19, 23, 29, 59], 61),
    ([3, 19, 23, 29, 61], 67),
    ([3, 19, 23, 29, 67], 71),
    ([3, 19, 23, 29, 71], 73),
    ([3, 19, 23, 31, 37], 41),
    ([3, 19, 23, 31, 41], 43),
    ([3, 19, 23, 31, 43], 47),
    ([3, 19, 23, 31, 47], 53),
    ([3, 19, 23, 31, 53], 59),
    ([3, 19, 23, 31, 59], 61),
    ([3, 19, 23, 31, 61], 67),
    ([3, 19, 23, 31, 67], 71),
    ([3, 19, 23, 37, 41], 43),
    ([3, 19, 23, 37, 43], 47),
    ([3, 19, 23, 37, 47], 53),
    ([3, 19, 23, 37, 53], 59),
    ([3, 19, 23, 37, 59], 61),
    ([3, 19, 23, 37, 61], 67),
    ([3, 19, 23, 41, 43], 47),
    ([3, 19, 23, 41, 47], 53),
    ([3, 19, 23, 41, 53], 59),
    ([3, 19, 23, 41, 59], 61),
    ([3, 19, 23, 43, 47], 53),
    ([3, 19, 23, 43, 53], 59),
    ([3, 19, 23, 47, 53], 59),
    ([3, 19, 29, 31, 37], 41),
    ([3, 19, 29, 31, 41], 43),
    ([3, 19, 29, 31, 43], 47),
    ([3, 19, 29, 31, 47], 53),
    ([3, 19, 29, 31, 53], 59),
    ([3, 19, 29, 31, 59], 61),
    ([3, 19, 29, 37, 41], 43),
    ([3, 19, 29, 37, 43], 47),
    ([3, 19, 29, 37, 47], 53),
    ([3, 19, 29, 37, 53], 59)]

theorem k6PrefixGroup0025ActualRows_eq_filter :
    k6PrefixGroup0025ActualRows =
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.k6PrefixGroup0025.filter (fun row =>
        decide (Erdos848.globalMixedSupportEndpoint row.1 <
          200_000_000)) := by
  rfl

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
