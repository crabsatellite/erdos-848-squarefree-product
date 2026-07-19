import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0064 : List (List ℕ) :=
  [[3, 13, 29, 61],
     [3, 13, 29, 67],
     [3, 13, 29, 71],
     [3, 13, 29, 73],
     [3, 13, 29, 79],
     [3, 13, 29, 83],
     [3, 13, 29, 89],
     [3, 13, 31, 37]]

theorem k5FiveTwistGroup0064_passes :
    k5FiveTwistGroup0064.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0064_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
