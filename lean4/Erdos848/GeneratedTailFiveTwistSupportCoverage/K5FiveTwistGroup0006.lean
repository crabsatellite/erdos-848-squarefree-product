import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0006 : List (List ℕ) :=
  [[3, 7, 13, 43],
     [3, 7, 13, 47],
     [3, 7, 13, 53],
     [3, 7, 13, 59],
     [3, 7, 13, 61],
     [3, 7, 13, 67],
     [3, 7, 13, 71],
     [3, 7, 13, 73]]

theorem k5FiveTwistGroup0006_passes :
    k5FiveTwistGroup0006.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0006_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
