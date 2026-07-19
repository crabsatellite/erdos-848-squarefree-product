import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0047 : List (List ℕ) :=
  [[3, 11, 29, 47],
     [3, 11, 29, 53],
     [3, 11, 29, 59],
     [3, 11, 29, 61],
     [3, 11, 29, 67],
     [3, 11, 29, 71],
     [3, 11, 29, 73],
     [3, 11, 29, 79]]

theorem k5FiveTwistGroup0047_passes :
    k5FiveTwistGroup0047.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0047_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
