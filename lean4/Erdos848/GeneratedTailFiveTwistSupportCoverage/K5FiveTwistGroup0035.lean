import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0035 : List (List ℕ) :=
  [[3, 11, 13, 29],
     [3, 11, 13, 31],
     [3, 11, 13, 37],
     [3, 11, 13, 41],
     [3, 11, 13, 43],
     [3, 11, 13, 47],
     [3, 11, 13, 53],
     [3, 11, 13, 59]]

theorem k5FiveTwistGroup0035_passes :
    k5FiveTwistGroup0035.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0035_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
