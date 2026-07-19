import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0007 : List (List ℕ) :=
  [[3, 7, 13, 79],
     [3, 7, 13, 83],
     [3, 7, 13, 89],
     [3, 7, 13, 97],
     [3, 7, 13, 101],
     [3, 7, 13, 103],
     [3, 7, 13, 107],
     [3, 7, 13, 109]]

theorem k5FiveTwistGroup0007_passes :
    k5FiveTwistGroup0007.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0007_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
