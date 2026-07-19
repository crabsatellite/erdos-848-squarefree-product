import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0071 : List (List ℕ) :=
  [[29, 73],
     [29, 79],
     [29, 83],
     [29, 89],
     [29, 97],
     [29, 101],
     [29, 103],
     [29, 107],
     [29, 109],
     [29, 113],
     [29, 127],
     [29, 131],
     [29, 137],
     [29, 139],
     [29, 149],
     [29, 151]]

theorem k3FiveTwistGroup0071_passes :
    k3FiveTwistGroup0071.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0071_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
