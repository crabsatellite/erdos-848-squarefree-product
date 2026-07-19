import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0113 : List (List ℕ) :=
  [[7, 19, 23, 31],
     [7, 19, 23, 37],
     [7, 19, 23, 41],
     [7, 19, 23, 43],
     [7, 19, 23, 47],
     [7, 19, 23, 53],
     [7, 19, 29, 31],
     [7, 19, 29, 37]]

theorem k5FiveTwistGroup0113_passes :
    k5FiveTwistGroup0113.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0113_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
