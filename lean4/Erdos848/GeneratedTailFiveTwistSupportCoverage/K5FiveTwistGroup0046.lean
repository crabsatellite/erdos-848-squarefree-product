import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0046 : List (List ℕ) :=
  [[3, 11, 23, 101],
     [3, 11, 23, 103],
     [3, 11, 23, 107],
     [3, 11, 23, 109],
     [3, 11, 29, 31],
     [3, 11, 29, 37],
     [3, 11, 29, 41],
     [3, 11, 29, 43]]

theorem k5FiveTwistGroup0046_passes :
    k5FiveTwistGroup0046.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0046_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
