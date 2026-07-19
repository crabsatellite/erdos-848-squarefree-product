import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0102 : List (List ℕ) :=
  [[53, 71],
     [53, 73],
     [53, 79],
     [53, 83],
     [53, 89],
     [53, 97],
     [53, 101],
     [53, 103],
     [53, 107],
     [53, 109],
     [53, 113],
     [53, 127],
     [53, 131],
     [53, 137],
     [53, 139],
     [53, 149]]

theorem k3FiveTwistGroup0102_passes :
    k3FiveTwistGroup0102.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0102_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
