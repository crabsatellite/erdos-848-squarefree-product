import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K7PrefixGroup0004Defs
import Erdos848.TailGlobalMixedSupportChecker

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k7PrefixGroup0004ActualRows : List (List Nat × Nat) :=
  [([3, 11, 13, 17, 19, 23], 29),
    ([3, 11, 13, 17, 19, 29], 31),
    ([3, 11, 13, 17, 19, 31], 37),
    ([3, 11, 13, 17, 23, 29], 31),
    ([3, 11, 13, 17, 23, 31], 37),
    ([3, 11, 13, 19, 23, 29], 31)]

theorem k7PrefixGroup0004ActualRows_eq_filter :
    k7PrefixGroup0004ActualRows =
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.k7PrefixGroup0004.filter (fun row =>
        decide (Erdos848.globalMixedSupportEndpoint row.1 <
          200_000_000)) := by
  rfl

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
