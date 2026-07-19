import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0050 : List (List ℕ) :=
  [[3, 11, 31, 89],
     [3, 11, 37, 41],
     [3, 11, 37, 43],
     [3, 11, 37, 47],
     [3, 11, 37, 53],
     [3, 11, 37, 59],
     [3, 11, 37, 61],
     [3, 11, 37, 67]]

theorem k5FiveTwistGroup0050_passes :
    k5FiveTwistGroup0050.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0050_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
