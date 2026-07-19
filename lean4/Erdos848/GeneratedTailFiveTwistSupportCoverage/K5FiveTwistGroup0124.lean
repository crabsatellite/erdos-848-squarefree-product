import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0124 : List (List ℕ) :=
  [[13, 17, 23, 29],
     [13, 17, 23, 31],
     [13, 17, 23, 37],
     [13, 17, 23, 41],
     [13, 17, 29, 31],
     [13, 17, 29, 37],
     [13, 19, 23, 29],
     [13, 19, 23, 31]]

theorem k5FiveTwistGroup0124_passes :
    k5FiveTwistGroup0124.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0124_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
