import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0059 : List (List ℕ) :=
  [[3, 13, 19, 47],
     [3, 13, 19, 53],
     [3, 13, 19, 59],
     [3, 13, 19, 61],
     [3, 13, 19, 67],
     [3, 13, 19, 71],
     [3, 13, 19, 73],
     [3, 13, 19, 79]]

theorem k5FiveTwistGroup0059_passes :
    k5FiveTwistGroup0059.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0059_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
