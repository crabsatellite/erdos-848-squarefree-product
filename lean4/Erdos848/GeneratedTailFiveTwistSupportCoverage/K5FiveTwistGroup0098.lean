import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0098 : List (List ℕ) :=
  [[7, 11, 23, 29],
     [7, 11, 23, 31],
     [7, 11, 23, 37],
     [7, 11, 23, 41],
     [7, 11, 23, 43],
     [7, 11, 23, 47],
     [7, 11, 23, 53],
     [7, 11, 23, 59]]

theorem k5FiveTwistGroup0098_passes :
    k5FiveTwistGroup0098.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0098_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
