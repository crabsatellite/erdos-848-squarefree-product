import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0001 : List (List ℕ) :=
  [[3, 7, 11, 43],
     [3, 7, 11, 47],
     [3, 7, 11, 53],
     [3, 7, 11, 59],
     [3, 7, 11, 61],
     [3, 7, 11, 67],
     [3, 7, 11, 71],
     [3, 7, 11, 73]]

theorem k5FiveTwistGroup0001_passes :
    k5FiveTwistGroup0001.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0001_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
