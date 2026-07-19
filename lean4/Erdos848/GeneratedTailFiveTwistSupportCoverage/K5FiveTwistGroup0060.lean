import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0060 : List (List ℕ) :=
  [[3, 13, 19, 83],
     [3, 13, 19, 89],
     [3, 13, 19, 97],
     [3, 13, 19, 101],
     [3, 13, 19, 103],
     [3, 13, 19, 107],
     [3, 13, 19, 109],
     [3, 13, 23, 29]]

theorem k5FiveTwistGroup0060_passes :
    k5FiveTwistGroup0060.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0060_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
