import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0110 : List (List ℕ) :=
  [[7, 17, 19, 53],
     [7, 17, 19, 59],
     [7, 17, 19, 61],
     [7, 17, 23, 29],
     [7, 17, 23, 31],
     [7, 17, 23, 37],
     [7, 17, 23, 41],
     [7, 17, 23, 43]]

theorem k5FiveTwistGroup0110_passes :
    k5FiveTwistGroup0110.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0110_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
