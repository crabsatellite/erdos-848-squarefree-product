import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0097 : List (List ℕ) :=
  [[7, 11, 19, 47],
     [7, 11, 19, 53],
     [7, 11, 19, 59],
     [7, 11, 19, 61],
     [7, 11, 19, 67],
     [7, 11, 19, 71],
     [7, 11, 19, 73],
     [7, 11, 19, 79]]

theorem k5FiveTwistGroup0097_passes :
    k5FiveTwistGroup0097.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0097_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
