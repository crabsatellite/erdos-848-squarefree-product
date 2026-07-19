import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0030 : List (List ℕ) :=
  [[3, 7, 43, 97],
     [3, 7, 43, 101],
     [3, 7, 43, 103],
     [3, 7, 47, 53],
     [3, 7, 47, 59],
     [3, 7, 47, 61],
     [3, 7, 47, 67],
     [3, 7, 47, 71]]

theorem k5FiveTwistGroup0030_passes :
    k5FiveTwistGroup0030.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0030_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
