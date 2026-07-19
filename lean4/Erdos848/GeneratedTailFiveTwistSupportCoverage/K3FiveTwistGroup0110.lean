import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0110 : List (List ℕ) :=
  [[61, 73],
     [61, 79],
     [61, 83],
     [61, 89],
     [61, 97],
     [61, 101],
     [61, 103],
     [61, 107],
     [61, 109],
     [61, 113],
     [61, 127],
     [61, 131],
     [61, 137],
     [61, 139],
     [61, 149],
     [61, 151]]

theorem k3FiveTwistGroup0110_passes :
    k3FiveTwistGroup0110.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0110_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
