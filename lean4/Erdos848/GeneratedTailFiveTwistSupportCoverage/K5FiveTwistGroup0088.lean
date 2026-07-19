import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0088 : List (List ℕ) :=
  [[3, 23, 31, 59],
     [3, 23, 31, 61],
     [3, 23, 37, 41],
     [3, 23, 37, 43],
     [3, 23, 37, 47],
     [3, 23, 37, 53],
     [3, 23, 37, 59],
     [3, 23, 41, 43]]

theorem k5FiveTwistGroup0088_passes :
    k5FiveTwistGroup0088.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0088_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
