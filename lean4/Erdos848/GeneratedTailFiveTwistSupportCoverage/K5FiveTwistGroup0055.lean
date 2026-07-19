import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0055 : List (List ℕ) :=
  [[3, 11, 59, 61],
     [3, 11, 59, 67],
     [3, 11, 61, 67],
     [3, 13, 17, 19],
     [3, 13, 17, 23],
     [3, 13, 17, 29],
     [3, 13, 17, 31],
     [3, 13, 17, 37]]

theorem k5FiveTwistGroup0055_passes :
    k5FiveTwistGroup0055.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0055_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
