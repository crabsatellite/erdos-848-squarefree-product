import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0079 : List (List ℕ) :=
  [[3, 17, 43, 47],
     [3, 17, 43, 53],
     [3, 17, 43, 59],
     [3, 17, 43, 61],
     [3, 17, 47, 53],
     [3, 17, 47, 59],
     [3, 17, 47, 61],
     [3, 17, 53, 59]]

theorem k5FiveTwistGroup0079_passes :
    k5FiveTwistGroup0079.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0079_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
