import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0130 : List (List ℕ) :=
  [[89, 131],
     [89, 137],
     [89, 139],
     [89, 149],
     [89, 151],
     [89, 157],
     [89, 163],
     [89, 167],
     [89, 173],
     [89, 179],
     [89, 181],
     [89, 191],
     [89, 193],
     [89, 197],
     [89, 199],
     [89, 211]]

theorem k3FiveTwistGroup0130_passes :
    k3FiveTwistGroup0130.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0130_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
