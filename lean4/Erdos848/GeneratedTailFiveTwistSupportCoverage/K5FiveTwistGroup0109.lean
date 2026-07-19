import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0109 : List (List ℕ) :=
  [[7, 13, 43, 47],
     [7, 17, 19, 23],
     [7, 17, 19, 29],
     [7, 17, 19, 31],
     [7, 17, 19, 37],
     [7, 17, 19, 41],
     [7, 17, 19, 43],
     [7, 17, 19, 47]]

theorem k5FiveTwistGroup0109_passes :
    k5FiveTwistGroup0109.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0109_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
