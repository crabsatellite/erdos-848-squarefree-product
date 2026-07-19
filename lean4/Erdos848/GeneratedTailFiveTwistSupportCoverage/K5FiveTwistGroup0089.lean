import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0089 : List (List ℕ) :=
  [[3, 23, 41, 47],
     [3, 23, 41, 53],
     [3, 23, 43, 47],
     [3, 23, 43, 53],
     [3, 29, 31, 37],
     [3, 29, 31, 41],
     [3, 29, 31, 43],
     [3, 29, 31, 47]]

theorem k5FiveTwistGroup0089_passes :
    k5FiveTwistGroup0089.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0089_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
