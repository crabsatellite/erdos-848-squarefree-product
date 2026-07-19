import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0084 : List (List ℕ) :=
  [[7, 19, 79],
     [7, 19, 83],
     [7, 19, 89],
     [7, 19, 97],
     [7, 19, 101],
     [7, 19, 103],
     [7, 19, 107],
     [7, 19, 109],
     [7, 19, 113],
     [7, 19, 127],
     [7, 19, 131],
     [7, 19, 137],
     [7, 19, 139],
     [7, 19, 149],
     [7, 19, 151],
     [7, 19, 157]]

theorem k4FiveTwistGroup0084_passes :
    k4FiveTwistGroup0084.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0084_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
