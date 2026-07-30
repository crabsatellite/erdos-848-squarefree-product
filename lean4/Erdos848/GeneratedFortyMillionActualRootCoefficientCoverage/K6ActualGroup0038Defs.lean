import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K6PrefixGroup0038Defs
import Erdos848.TailGlobalMixedSupportChecker

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k6PrefixGroup0038ActualRows : List (List Nat × Nat) :=
  []

theorem k6PrefixGroup0038ActualRows_eq_filter :
    k6PrefixGroup0038ActualRows =
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.k6PrefixGroup0038.filter (fun row =>
        decide (Erdos848.globalMixedSupportEndpoint row.1 <
          200_000_000)) := by
  rfl

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
