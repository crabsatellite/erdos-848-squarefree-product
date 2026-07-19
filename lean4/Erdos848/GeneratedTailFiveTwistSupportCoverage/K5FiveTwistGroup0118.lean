import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0118 : List (List ℕ) :=
  [[11, 13, 19, 47],
     [11, 13, 19, 53],
     [11, 13, 19, 59],
     [11, 13, 23, 29],
     [11, 13, 23, 31],
     [11, 13, 23, 37],
     [11, 13, 23, 41],
     [11, 13, 23, 43]]

theorem k5FiveTwistGroup0118_passes :
    k5FiveTwistGroup0118.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0118_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
