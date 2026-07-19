import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0119 : List (List ℕ) :=
  [[11, 13, 23, 47],
     [11, 13, 29, 31],
     [11, 13, 29, 37],
     [11, 13, 29, 41],
     [11, 13, 29, 43],
     [11, 13, 31, 37],
     [11, 13, 31, 41],
     [11, 13, 31, 43]]

theorem k5FiveTwistGroup0119_passes :
    k5FiveTwistGroup0119.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0119_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
