import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K5PrefixGroup0082Defs
import Erdos848.TailGlobalMixedSupportChecker

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0082ActualRows : List (List Nat × Nat) :=
  [([29, 37, 41, 43], 47),
    ([29, 37, 41, 47], 53),
    ([29, 37, 41, 53], 59),
    ([29, 37, 41, 59], 61),
    ([29, 37, 41, 61], 67),
    ([29, 37, 43, 47], 53),
    ([29, 37, 43, 53], 59),
    ([29, 37, 43, 59], 61),
    ([29, 37, 43, 61], 67),
    ([29, 37, 47, 53], 59),
    ([29, 37, 47, 59], 61),
    ([29, 41, 43, 47], 53),
    ([29, 41, 43, 53], 59),
    ([29, 41, 43, 59], 61),
    ([29, 41, 47, 53], 59),
    ([29, 43, 47, 53], 59),
    ([31, 37, 41, 43], 47),
    ([31, 37, 41, 47], 53),
    ([31, 37, 41, 53], 59),
    ([31, 37, 41, 59], 61),
    ([31, 37, 41, 61], 67),
    ([31, 37, 43, 47], 53),
    ([31, 37, 43, 53], 59),
    ([31, 37, 43, 59], 61),
    ([31, 37, 47, 53], 59),
    ([31, 37, 47, 59], 61),
    ([31, 41, 43, 47], 53),
    ([31, 41, 43, 53], 59),
    ([31, 41, 43, 59], 61),
    ([31, 41, 47, 53], 59),
    ([31, 43, 47, 53], 59),
    ([37, 41, 43, 47], 53)]

theorem k5PrefixGroup0082ActualRows_eq_filter :
    k5PrefixGroup0082ActualRows =
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.k5PrefixGroup0082.filter (fun row =>
        decide (Erdos848.globalMixedSupportEndpoint row.1 <
          200_000_000)) := by
  rfl

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
