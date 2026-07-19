import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0147 : List (List ℕ) :=
  [[127, 263],
     [127, 269],
     [127, 271],
     [127, 277],
     [131, 137],
     [131, 139],
     [131, 149],
     [131, 151],
     [131, 157],
     [131, 163],
     [131, 167],
     [131, 173],
     [131, 179],
     [131, 181],
     [131, 191],
     [131, 193]]

theorem k3FiveTwistGroup0147_passes :
    k3FiveTwistGroup0147.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0147_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
