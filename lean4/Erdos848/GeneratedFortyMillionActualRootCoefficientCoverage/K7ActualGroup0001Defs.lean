import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K7PrefixGroup0001Defs
import Erdos848.TailGlobalMixedSupportChecker

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k7PrefixGroup0001ActualRows : List (List Nat × Nat) :=
  [([3, 7, 11, 19, 23, 29], 31),
    ([3, 7, 11, 19, 23, 31], 37),
    ([3, 7, 11, 19, 23, 37], 41),
    ([3, 7, 11, 19, 23, 41], 43),
    ([3, 7, 11, 19, 29, 31], 37),
    ([3, 7, 11, 19, 29, 37], 41),
    ([3, 7, 11, 23, 29, 31], 37)]

theorem k7PrefixGroup0001ActualRows_eq_filter :
    k7PrefixGroup0001ActualRows =
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.k7PrefixGroup0001.filter (fun row =>
        decide (Erdos848.globalMixedSupportEndpoint row.1 <
          200_000_000)) := by
  rfl

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
