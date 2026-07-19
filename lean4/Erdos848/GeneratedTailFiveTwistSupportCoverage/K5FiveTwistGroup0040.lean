import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0040 : List (List ℕ) :=
  [[3, 11, 17, 79],
     [3, 11, 17, 83],
     [3, 11, 17, 89],
     [3, 11, 17, 97],
     [3, 11, 17, 101],
     [3, 11, 17, 103],
     [3, 11, 17, 107],
     [3, 11, 17, 109]]

theorem k5FiveTwistGroup0040_passes :
    k5FiveTwistGroup0040.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0040_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
