import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0015 : List (List ℕ) :=
  [[3, 7, 19, 73],
     [3, 7, 19, 79],
     [3, 7, 19, 83],
     [3, 7, 19, 89],
     [3, 7, 19, 97],
     [3, 7, 19, 101],
     [3, 7, 19, 103],
     [3, 7, 19, 107]]

theorem k5FiveTwistGroup0015_passes :
    k5FiveTwistGroup0015.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0015_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
