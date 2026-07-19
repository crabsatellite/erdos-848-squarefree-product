import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0041 : List (List ℕ) :=
  [[3, 11, 17, 113],
     [3, 11, 17, 127],
     [3, 11, 19, 23],
     [3, 11, 19, 29],
     [3, 11, 19, 31],
     [3, 11, 19, 37],
     [3, 11, 19, 41],
     [3, 11, 19, 43]]

theorem k5FiveTwistGroup0041_passes :
    k5FiveTwistGroup0041.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0041_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
