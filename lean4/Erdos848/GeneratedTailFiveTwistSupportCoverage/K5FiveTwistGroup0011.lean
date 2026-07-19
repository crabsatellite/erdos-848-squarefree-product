import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0011 : List (List ℕ) :=
  [[3, 7, 17, 67],
     [3, 7, 17, 71],
     [3, 7, 17, 73],
     [3, 7, 17, 79],
     [3, 7, 17, 83],
     [3, 7, 17, 89],
     [3, 7, 17, 97],
     [3, 7, 17, 101]]

theorem k5FiveTwistGroup0011_passes :
    k5FiveTwistGroup0011.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0011_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
