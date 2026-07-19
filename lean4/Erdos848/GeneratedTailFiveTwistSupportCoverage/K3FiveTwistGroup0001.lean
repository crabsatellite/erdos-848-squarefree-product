import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0001 : List (List ℕ) :=
  [[3, 71],
     [3, 73],
     [3, 79],
     [3, 83],
     [3, 89],
     [3, 97],
     [3, 101],
     [3, 103],
     [3, 107],
     [3, 109],
     [3, 113],
     [3, 127],
     [3, 131],
     [3, 137],
     [3, 139],
     [3, 149]]

theorem k3FiveTwistGroup0001_passes :
    k3FiveTwistGroup0001.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0001_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
