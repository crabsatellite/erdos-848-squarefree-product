import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K5PrefixGroup0083Defs
import Erdos848.TailGlobalMixedSupportChecker

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0083ActualRows : List (List Nat × Nat) :=
  []

theorem k5PrefixGroup0083ActualRows_eq_filter :
    k5PrefixGroup0083ActualRows =
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.k5PrefixGroup0083.filter (fun row =>
        decide (Erdos848.globalMixedSupportEndpoint row.1 <
          200_000_000)) := by
  rfl

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
