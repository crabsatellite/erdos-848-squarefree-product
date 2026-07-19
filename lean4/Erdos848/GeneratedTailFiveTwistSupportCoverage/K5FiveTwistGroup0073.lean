import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0073 : List (List ℕ) :=
  [[3, 17, 23, 37],
     [3, 17, 23, 41],
     [3, 17, 23, 43],
     [3, 17, 23, 47],
     [3, 17, 23, 53],
     [3, 17, 23, 59],
     [3, 17, 23, 61],
     [3, 17, 23, 67]]

theorem k5FiveTwistGroup0073_passes :
    k5FiveTwistGroup0073.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0073_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
