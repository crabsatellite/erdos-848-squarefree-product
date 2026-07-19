import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0054 : List (List ℕ) :=
  [[3, 11, 47, 61],
     [3, 11, 47, 67],
     [3, 11, 47, 71],
     [3, 11, 47, 73],
     [3, 11, 53, 59],
     [3, 11, 53, 61],
     [3, 11, 53, 67],
     [3, 11, 53, 71]]

theorem k5FiveTwistGroup0054_passes :
    k5FiveTwistGroup0054.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0054_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
