import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0072 : List (List ℕ) :=
  [[3, 17, 19, 71],
     [3, 17, 19, 73],
     [3, 17, 19, 79],
     [3, 17, 19, 83],
     [3, 17, 19, 89],
     [3, 17, 19, 97],
     [3, 17, 23, 29],
     [3, 17, 23, 31]]

theorem k5FiveTwistGroup0072_passes :
    k5FiveTwistGroup0072.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0072_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
