import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0145 : List (List ℕ) :=
  [[113, 251],
     [113, 257],
     [113, 263],
     [113, 269],
     [113, 271],
     [113, 277],
     [113, 281],
     [113, 283],
     [127, 131],
     [127, 137],
     [127, 139],
     [127, 149],
     [127, 151],
     [127, 157],
     [127, 163],
     [127, 167]]

theorem k3FiveTwistGroup0145_passes :
    k3FiveTwistGroup0145.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0145_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
