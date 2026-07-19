import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0070 : List (List ℕ) :=
  [[3, 13, 47, 71],
     [3, 13, 53, 59],
     [3, 13, 53, 61],
     [3, 13, 53, 67],
     [3, 13, 59, 61],
     [3, 17, 19, 23],
     [3, 17, 19, 29],
     [3, 17, 19, 31]]

theorem k5FiveTwistGroup0070_passes :
    k5FiveTwistGroup0070.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0070_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
