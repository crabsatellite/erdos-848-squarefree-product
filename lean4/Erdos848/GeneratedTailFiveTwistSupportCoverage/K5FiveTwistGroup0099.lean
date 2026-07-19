import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0099 : List (List ℕ) :=
  [[7, 11, 23, 61],
     [7, 11, 23, 67],
     [7, 11, 23, 71],
     [7, 11, 29, 31],
     [7, 11, 29, 37],
     [7, 11, 29, 41],
     [7, 11, 29, 43],
     [7, 11, 29, 47]]

theorem k5FiveTwistGroup0099_passes :
    k5FiveTwistGroup0099.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0099_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
