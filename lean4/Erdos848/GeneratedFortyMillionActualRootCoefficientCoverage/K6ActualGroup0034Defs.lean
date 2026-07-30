import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K6PrefixGroup0034Defs
import Erdos848.TailGlobalMixedSupportChecker

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k6PrefixGroup0034ActualRows : List (List Nat × Nat) :=
  [([7, 19, 23, 29, 31], 37),
    ([7, 19, 23, 29, 37], 41),
    ([7, 19, 23, 29, 41], 43),
    ([7, 19, 23, 29, 43], 47),
    ([7, 19, 23, 31, 37], 41),
    ([7, 19, 23, 31, 41], 43),
    ([7, 19, 23, 31, 43], 47),
    ([7, 19, 23, 37, 41], 43),
    ([7, 19, 29, 31, 37], 41)]

theorem k6PrefixGroup0034ActualRows_eq_filter :
    k6PrefixGroup0034ActualRows =
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.k6PrefixGroup0034.filter (fun row =>
        decide (Erdos848.globalMixedSupportEndpoint row.1 <
          200_000_000)) := by
  rfl

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
