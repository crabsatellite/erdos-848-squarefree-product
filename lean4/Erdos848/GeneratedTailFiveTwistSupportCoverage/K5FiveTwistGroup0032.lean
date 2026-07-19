import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0032 : List (List ℕ) :=
  [[3, 7, 53, 71],
     [3, 7, 53, 73],
     [3, 7, 53, 79],
     [3, 7, 53, 83],
     [3, 7, 53, 89],
     [3, 7, 59, 61],
     [3, 7, 59, 67],
     [3, 7, 59, 71]]

theorem k5FiveTwistGroup0032_passes :
    k5FiveTwistGroup0032.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0032_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
