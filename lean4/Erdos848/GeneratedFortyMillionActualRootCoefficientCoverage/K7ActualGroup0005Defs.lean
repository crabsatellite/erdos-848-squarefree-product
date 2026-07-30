import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K7PrefixGroup0005Defs
import Erdos848.TailGlobalMixedSupportChecker

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k7PrefixGroup0005ActualRows : List (List Nat × Nat) :=
  []

theorem k7PrefixGroup0005ActualRows_eq_filter :
    k7PrefixGroup0005ActualRows =
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.k7PrefixGroup0005.filter (fun row =>
        decide (Erdos848.globalMixedSupportEndpoint row.1 <
          200_000_000)) := by
  rfl

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
