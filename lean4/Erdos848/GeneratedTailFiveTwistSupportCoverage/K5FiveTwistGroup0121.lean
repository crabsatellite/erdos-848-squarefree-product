import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0121 : List (List ℕ) :=
  [[11, 17, 23, 29],
     [11, 17, 23, 31],
     [11, 17, 23, 37],
     [11, 17, 23, 41],
     [11, 17, 23, 43],
     [11, 17, 29, 31],
     [11, 17, 29, 37],
     [11, 17, 29, 41]]

theorem k5FiveTwistGroup0121_passes :
    k5FiveTwistGroup0121.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0121_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
