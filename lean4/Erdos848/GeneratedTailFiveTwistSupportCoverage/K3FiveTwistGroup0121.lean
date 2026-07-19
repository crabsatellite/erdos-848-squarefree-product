import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0121 : List (List ℕ) :=
  [[73, 113],
     [73, 127],
     [73, 131],
     [73, 137],
     [73, 139],
     [73, 149],
     [73, 151],
     [73, 157],
     [73, 163],
     [73, 167],
     [73, 173],
     [73, 179],
     [73, 181],
     [73, 191],
     [73, 193],
     [73, 197]]

theorem k3FiveTwistGroup0121_passes :
    k3FiveTwistGroup0121.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0121_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
