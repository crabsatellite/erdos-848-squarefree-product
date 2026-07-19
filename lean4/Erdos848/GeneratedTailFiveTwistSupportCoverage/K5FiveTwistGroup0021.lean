import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0021 : List (List ℕ) :=
  [[3, 7, 29, 67],
     [3, 7, 29, 71],
     [3, 7, 29, 73],
     [3, 7, 29, 79],
     [3, 7, 29, 83],
     [3, 7, 29, 89],
     [3, 7, 29, 97],
     [3, 7, 29, 101]]

theorem k5FiveTwistGroup0021_passes :
    k5FiveTwistGroup0021.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0021_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
