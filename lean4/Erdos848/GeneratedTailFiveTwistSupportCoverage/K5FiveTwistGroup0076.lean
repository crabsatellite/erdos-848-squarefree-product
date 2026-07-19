import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0076 : List (List ℕ) :=
  [[3, 17, 31, 37],
     [3, 17, 31, 41],
     [3, 17, 31, 43],
     [3, 17, 31, 47],
     [3, 17, 31, 53],
     [3, 17, 31, 59],
     [3, 17, 31, 61],
     [3, 17, 31, 67]]

theorem k5FiveTwistGroup0076_passes :
    k5FiveTwistGroup0076.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0076_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
