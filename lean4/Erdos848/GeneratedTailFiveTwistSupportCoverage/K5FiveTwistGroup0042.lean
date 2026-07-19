import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0042 : List (List ℕ) :=
  [[3, 11, 19, 47],
     [3, 11, 19, 53],
     [3, 11, 19, 59],
     [3, 11, 19, 61],
     [3, 11, 19, 67],
     [3, 11, 19, 71],
     [3, 11, 19, 73],
     [3, 11, 19, 79]]

theorem k5FiveTwistGroup0042_passes :
    k5FiveTwistGroup0042.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0042_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
