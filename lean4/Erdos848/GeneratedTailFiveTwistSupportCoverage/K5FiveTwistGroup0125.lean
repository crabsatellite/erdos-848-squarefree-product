import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0125 : List (List ℕ) :=
  [[13, 19, 23, 37],
     [13, 19, 29, 31],
     [13, 23, 29, 31],
     [17, 19, 23, 29],
     [17, 19, 23, 31]]

theorem k5FiveTwistGroup0125_passes :
    k5FiveTwistGroup0125.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0125_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
