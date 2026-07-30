import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K7PrefixGroup0003Defs
import Erdos848.TailGlobalMixedSupportChecker

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k7PrefixGroup0003ActualRows : List (List Nat × Nat) :=
  [([3, 7, 17, 19, 23, 29], 31),
    ([3, 7, 17, 19, 23, 31], 37)]

theorem k7PrefixGroup0003ActualRows_eq_filter :
    k7PrefixGroup0003ActualRows =
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.k7PrefixGroup0003.filter (fun row =>
        decide (Erdos848.globalMixedSupportEndpoint row.1 <
          200_000_000)) := by
  rfl

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
