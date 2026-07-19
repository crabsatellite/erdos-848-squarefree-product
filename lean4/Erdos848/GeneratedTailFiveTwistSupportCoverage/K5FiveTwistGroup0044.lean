import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0044 : List (List ℕ) :=
  [[3, 11, 23, 29],
     [3, 11, 23, 31],
     [3, 11, 23, 37],
     [3, 11, 23, 41],
     [3, 11, 23, 43],
     [3, 11, 23, 47],
     [3, 11, 23, 53],
     [3, 11, 23, 59]]

theorem k5FiveTwistGroup0044_passes :
    k5FiveTwistGroup0044.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0044_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
