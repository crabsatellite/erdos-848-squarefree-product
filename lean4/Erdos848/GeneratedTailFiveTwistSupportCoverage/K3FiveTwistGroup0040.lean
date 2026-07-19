import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0040 : List (List ℕ) :=
  [[13, 83],
     [13, 89],
     [13, 97],
     [13, 101],
     [13, 103],
     [13, 107],
     [13, 109],
     [13, 113],
     [13, 127],
     [13, 131],
     [13, 137],
     [13, 139],
     [13, 149],
     [13, 151],
     [13, 157],
     [13, 163]]

theorem k3FiveTwistGroup0040_passes :
    k3FiveTwistGroup0040.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0040_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
