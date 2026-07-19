import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0106 : List (List ℕ) :=
  [[7, 13, 23, 41],
     [7, 13, 23, 43],
     [7, 13, 23, 47],
     [7, 13, 23, 53],
     [7, 13, 23, 59],
     [7, 13, 23, 61],
     [7, 13, 23, 67],
     [7, 13, 29, 31]]

theorem k5FiveTwistGroup0106_passes :
    k5FiveTwistGroup0106.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0106_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
