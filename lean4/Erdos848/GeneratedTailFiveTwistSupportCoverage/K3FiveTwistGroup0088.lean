import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0088 : List (List ℕ) :=
  [[41, 83],
     [41, 89],
     [41, 97],
     [41, 101],
     [41, 103],
     [41, 107],
     [41, 109],
     [41, 113],
     [41, 127],
     [41, 131],
     [41, 137],
     [41, 139],
     [41, 149],
     [41, 151],
     [41, 157],
     [41, 163]]

theorem k3FiveTwistGroup0088_passes :
    k3FiveTwistGroup0088.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0088_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
