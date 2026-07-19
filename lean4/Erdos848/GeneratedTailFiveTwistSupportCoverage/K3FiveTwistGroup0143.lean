import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0143 : List (List ℕ) :=
  [[109, 251],
     [109, 257],
     [109, 263],
     [109, 269],
     [109, 271],
     [109, 277],
     [109, 281],
     [109, 283],
     [109, 293],
     [113, 127],
     [113, 131],
     [113, 137],
     [113, 139],
     [113, 149],
     [113, 151],
     [113, 157]]

theorem k3FiveTwistGroup0143_passes :
    k3FiveTwistGroup0143.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0143_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
