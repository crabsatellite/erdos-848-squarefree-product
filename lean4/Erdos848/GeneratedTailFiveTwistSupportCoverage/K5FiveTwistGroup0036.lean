import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0036 : List (List ℕ) :=
  [[3, 11, 13, 61],
     [3, 11, 13, 67],
     [3, 11, 13, 71],
     [3, 11, 13, 73],
     [3, 11, 13, 79],
     [3, 11, 13, 83],
     [3, 11, 13, 89],
     [3, 11, 13, 97]]

theorem k5FiveTwistGroup0036_passes :
    k5FiveTwistGroup0036.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0036_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
