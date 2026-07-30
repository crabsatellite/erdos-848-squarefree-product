import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K6PrefixGroup0036Defs
import Erdos848.TailGlobalMixedSupportChecker

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k6PrefixGroup0036ActualRows : List (List Nat × Nat) :=
  [([11, 13, 29, 31, 37], 41),
    ([11, 17, 19, 23, 29], 31),
    ([11, 17, 19, 23, 31], 37),
    ([11, 17, 19, 23, 37], 41),
    ([11, 17, 19, 23, 41], 43),
    ([11, 17, 19, 23, 43], 47),
    ([11, 17, 19, 29, 31], 37),
    ([11, 17, 19, 29, 37], 41),
    ([11, 17, 19, 29, 41], 43),
    ([11, 17, 19, 31, 37], 41),
    ([11, 17, 19, 31, 41], 43),
    ([11, 17, 23, 29, 31], 37),
    ([11, 17, 23, 29, 37], 41),
    ([11, 19, 23, 29, 31], 37)]

theorem k6PrefixGroup0036ActualRows_eq_filter :
    k6PrefixGroup0036ActualRows =
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.k6PrefixGroup0036.filter (fun row =>
        decide (Erdos848.globalMixedSupportEndpoint row.1 <
          200_000_000)) := by
  rfl

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
