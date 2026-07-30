import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K7PrefixGroup0002Defs
import Erdos848.TailGlobalMixedSupportChecker

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k7PrefixGroup0002ActualRows : List (List Nat × Nat) :=
  [([3, 7, 13, 17, 19, 23], 29),
    ([3, 7, 13, 17, 19, 29], 31),
    ([3, 7, 13, 17, 19, 31], 37),
    ([3, 7, 13, 17, 19, 37], 41),
    ([3, 7, 13, 17, 19, 41], 43),
    ([3, 7, 13, 17, 19, 43], 47),
    ([3, 7, 13, 17, 23, 29], 31),
    ([3, 7, 13, 17, 23, 31], 37),
    ([3, 7, 13, 17, 23, 37], 41),
    ([3, 7, 13, 17, 23, 41], 43),
    ([3, 7, 13, 17, 29, 31], 37),
    ([3, 7, 13, 19, 23, 29], 31),
    ([3, 7, 13, 19, 23, 31], 37),
    ([3, 7, 13, 19, 23, 37], 41),
    ([3, 7, 13, 19, 29, 31], 37)]

theorem k7PrefixGroup0002ActualRows_eq_filter :
    k7PrefixGroup0002ActualRows =
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.k7PrefixGroup0002.filter (fun row =>
        decide (Erdos848.globalMixedSupportEndpoint row.1 <
          200_000_000)) := by
  rfl

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
