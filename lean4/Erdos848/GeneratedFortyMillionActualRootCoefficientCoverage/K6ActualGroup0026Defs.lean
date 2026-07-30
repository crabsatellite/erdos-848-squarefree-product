import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K6PrefixGroup0026Defs
import Erdos848.TailGlobalMixedSupportChecker

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k6PrefixGroup0026ActualRows : List (List Nat × Nat) :=
  [([3, 19, 29, 41, 43], 47),
    ([3, 19, 29, 41, 47], 53),
    ([3, 19, 29, 43, 47], 53),
    ([3, 19, 31, 37, 41], 43),
    ([3, 19, 31, 37, 43], 47),
    ([3, 19, 31, 37, 47], 53),
    ([3, 19, 31, 41, 43], 47),
    ([3, 19, 31, 41, 47], 53),
    ([3, 19, 31, 43, 47], 53),
    ([3, 19, 37, 41, 43], 47),
    ([3, 23, 29, 31, 37], 41),
    ([3, 23, 29, 31, 41], 43),
    ([3, 23, 29, 31, 43], 47),
    ([3, 23, 29, 31, 47], 53),
    ([3, 23, 29, 31, 53], 59)]

theorem k6PrefixGroup0026ActualRows_eq_filter :
    k6PrefixGroup0026ActualRows =
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.k6PrefixGroup0026.filter (fun row =>
        decide (Erdos848.globalMixedSupportEndpoint row.1 <
          200_000_000)) := by
  rfl

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
