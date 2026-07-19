import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0096 : List (List ℕ) :=
  [[7, 11, 17, 79],
     [7, 11, 17, 83],
     [7, 11, 19, 23],
     [7, 11, 19, 29],
     [7, 11, 19, 31],
     [7, 11, 19, 37],
     [7, 11, 19, 41],
     [7, 11, 19, 43]]

theorem k5FiveTwistGroup0096_passes :
    k5FiveTwistGroup0096.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0096_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
