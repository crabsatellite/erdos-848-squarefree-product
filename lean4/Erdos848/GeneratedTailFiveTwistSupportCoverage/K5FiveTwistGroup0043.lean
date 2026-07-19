import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0043 : List (List ℕ) :=
  [[3, 11, 19, 83],
     [3, 11, 19, 89],
     [3, 11, 19, 97],
     [3, 11, 19, 101],
     [3, 11, 19, 103],
     [3, 11, 19, 107],
     [3, 11, 19, 109],
     [3, 11, 19, 113]]

theorem k5FiveTwistGroup0043_passes :
    k5FiveTwistGroup0043.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0043_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
