import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K6PrefixGroup0033Defs
import Erdos848.TailGlobalMixedSupportChecker

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k6PrefixGroup0033ActualRows : List (List Nat × Nat) :=
  [([7, 13, 31, 37, 41], 43),
    ([7, 17, 19, 23, 29], 31),
    ([7, 17, 19, 23, 31], 37),
    ([7, 17, 19, 23, 37], 41),
    ([7, 17, 19, 23, 41], 43),
    ([7, 17, 19, 23, 43], 47),
    ([7, 17, 19, 23, 47], 53),
    ([7, 17, 19, 23, 53], 59),
    ([7, 17, 19, 23, 59], 61),
    ([7, 17, 19, 29, 31], 37),
    ([7, 17, 19, 29, 37], 41),
    ([7, 17, 19, 29, 41], 43),
    ([7, 17, 19, 29, 43], 47),
    ([7, 17, 19, 29, 47], 53),
    ([7, 17, 19, 31, 37], 41),
    ([7, 17, 19, 31, 41], 43),
    ([7, 17, 19, 31, 43], 47),
    ([7, 17, 19, 31, 47], 53),
    ([7, 17, 19, 37, 41], 43),
    ([7, 17, 19, 37, 43], 47),
    ([7, 17, 19, 41, 43], 47),
    ([7, 17, 23, 29, 31], 37),
    ([7, 17, 23, 29, 37], 41),
    ([7, 17, 23, 29, 41], 43),
    ([7, 17, 23, 29, 43], 47),
    ([7, 17, 23, 29, 47], 53),
    ([7, 17, 23, 31, 37], 41),
    ([7, 17, 23, 31, 41], 43),
    ([7, 17, 23, 31, 43], 47),
    ([7, 17, 23, 37, 41], 43),
    ([7, 17, 29, 31, 37], 41),
    ([7, 17, 29, 31, 41], 43)]

theorem k6PrefixGroup0033ActualRows_eq_filter :
    k6PrefixGroup0033ActualRows =
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.k6PrefixGroup0033.filter (fun row =>
        decide (Erdos848.globalMixedSupportEndpoint row.1 <
          200_000_000)) := by
  rfl

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
