import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K6PrefixGroup0032Defs
import Erdos848.TailGlobalMixedSupportChecker

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k6PrefixGroup0032ActualRows : List (List Nat × Nat) :=
  [([7, 13, 19, 23, 29], 31),
    ([7, 13, 19, 23, 31], 37),
    ([7, 13, 19, 23, 37], 41),
    ([7, 13, 19, 23, 41], 43),
    ([7, 13, 19, 23, 43], 47),
    ([7, 13, 19, 23, 47], 53),
    ([7, 13, 19, 23, 53], 59),
    ([7, 13, 19, 23, 59], 61),
    ([7, 13, 19, 23, 61], 67),
    ([7, 13, 19, 23, 67], 71),
    ([7, 13, 19, 29, 31], 37),
    ([7, 13, 19, 29, 37], 41),
    ([7, 13, 19, 29, 41], 43),
    ([7, 13, 19, 29, 43], 47),
    ([7, 13, 19, 29, 47], 53),
    ([7, 13, 19, 29, 53], 59),
    ([7, 13, 19, 29, 59], 61),
    ([7, 13, 19, 31, 37], 41),
    ([7, 13, 19, 31, 41], 43),
    ([7, 13, 19, 31, 43], 47),
    ([7, 13, 19, 31, 47], 53),
    ([7, 13, 19, 31, 53], 59),
    ([7, 13, 19, 31, 59], 61),
    ([7, 13, 19, 37, 41], 43),
    ([7, 13, 19, 37, 43], 47),
    ([7, 13, 19, 37, 47], 53),
    ([7, 13, 19, 41, 43], 47),
    ([7, 13, 19, 41, 47], 53),
    ([7, 13, 19, 43, 47], 53),
    ([7, 13, 23, 29, 31], 37),
    ([7, 13, 23, 29, 37], 41),
    ([7, 13, 23, 29, 41], 43),
    ([7, 13, 23, 29, 43], 47),
    ([7, 13, 23, 29, 47], 53),
    ([7, 13, 23, 29, 53], 59),
    ([7, 13, 23, 31, 37], 41),
    ([7, 13, 23, 31, 41], 43),
    ([7, 13, 23, 31, 43], 47),
    ([7, 13, 23, 31, 47], 53),
    ([7, 13, 23, 37, 41], 43),
    ([7, 13, 23, 37, 43], 47),
    ([7, 13, 23, 37, 47], 53),
    ([7, 13, 23, 41, 43], 47),
    ([7, 13, 29, 31, 37], 41),
    ([7, 13, 29, 31, 41], 43),
    ([7, 13, 29, 31, 43], 47),
    ([7, 13, 29, 37, 41], 43),
    ([7, 13, 29, 37, 43], 47)]

theorem k6PrefixGroup0032ActualRows_eq_filter :
    k6PrefixGroup0032ActualRows =
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.k6PrefixGroup0032.filter (fun row =>
        decide (Erdos848.globalMixedSupportEndpoint row.1 <
          200_000_000)) := by
  rfl

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
