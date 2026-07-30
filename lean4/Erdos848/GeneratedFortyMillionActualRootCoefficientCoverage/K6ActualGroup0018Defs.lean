import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K6PrefixGroup0018Defs
import Erdos848.TailGlobalMixedSupportChecker

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k6PrefixGroup0018ActualRows : List (List Nat × Nat) :=
  [([3, 11, 41, 43, 47], 53),
    ([3, 11, 41, 43, 53], 59),
    ([3, 11, 41, 47, 53], 59),
    ([3, 13, 17, 19, 23], 29),
    ([3, 13, 17, 19, 29], 31),
    ([3, 13, 17, 19, 31], 37),
    ([3, 13, 17, 19, 37], 41),
    ([3, 13, 17, 19, 41], 43),
    ([3, 13, 17, 19, 43], 47),
    ([3, 13, 17, 19, 47], 53),
    ([3, 13, 17, 19, 53], 59),
    ([3, 13, 17, 19, 59], 61),
    ([3, 13, 17, 19, 61], 67),
    ([3, 13, 17, 19, 67], 71),
    ([3, 13, 17, 19, 71], 73),
    ([3, 13, 17, 19, 73], 79),
    ([3, 13, 17, 19, 79], 83),
    ([3, 13, 17, 19, 83], 89),
    ([3, 13, 17, 19, 89], 97),
    ([3, 13, 17, 19, 97], 101),
    ([3, 13, 17, 19, 101], 103),
    ([3, 13, 17, 19, 103], 107),
    ([3, 13, 17, 19, 107], 109),
    ([3, 13, 17, 19, 109], 113),
    ([3, 13, 17, 19, 113], 127),
    ([3, 13, 17, 23, 29], 31),
    ([3, 13, 17, 23, 31], 37),
    ([3, 13, 17, 23, 37], 41),
    ([3, 13, 17, 23, 41], 43),
    ([3, 13, 17, 23, 43], 47),
    ([3, 13, 17, 23, 47], 53),
    ([3, 13, 17, 23, 53], 59),
    ([3, 13, 17, 23, 59], 61),
    ([3, 13, 17, 23, 61], 67),
    ([3, 13, 17, 23, 67], 71),
    ([3, 13, 17, 23, 71], 73),
    ([3, 13, 17, 23, 73], 79),
    ([3, 13, 17, 23, 79], 83),
    ([3, 13, 17, 23, 83], 89),
    ([3, 13, 17, 23, 89], 97),
    ([3, 13, 17, 23, 97], 101),
    ([3, 13, 17, 23, 101], 103),
    ([3, 13, 17, 23, 103], 107),
    ([3, 13, 17, 23, 107], 109),
    ([3, 13, 17, 23, 109], 113)]

theorem k6PrefixGroup0018ActualRows_eq_filter :
    k6PrefixGroup0018ActualRows =
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.k6PrefixGroup0018.filter (fun row =>
        decide (Erdos848.globalMixedSupportEndpoint row.1 <
          200_000_000)) := by
  rfl

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
