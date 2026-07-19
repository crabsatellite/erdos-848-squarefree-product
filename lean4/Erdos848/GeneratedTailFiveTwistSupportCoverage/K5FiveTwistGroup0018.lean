import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0018 : List (List ℕ) :=
  [[3, 7, 23, 61],
     [3, 7, 23, 67],
     [3, 7, 23, 71],
     [3, 7, 23, 73],
     [3, 7, 23, 79],
     [3, 7, 23, 83],
     [3, 7, 23, 89],
     [3, 7, 23, 97]]

theorem k5FiveTwistGroup0018_passes :
    k5FiveTwistGroup0018.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0018_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
