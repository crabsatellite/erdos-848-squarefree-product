import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0068 : List (List ℕ) :=
  [[3, 13, 41, 59],
     [3, 13, 41, 61],
     [3, 13, 41, 67],
     [3, 13, 41, 71],
     [3, 13, 41, 73],
     [3, 13, 43, 47],
     [3, 13, 43, 53],
     [3, 13, 43, 59]]

theorem k5FiveTwistGroup0068_passes :
    k5FiveTwistGroup0068.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0068_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
