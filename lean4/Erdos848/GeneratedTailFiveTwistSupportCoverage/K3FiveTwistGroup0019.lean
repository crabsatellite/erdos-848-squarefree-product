import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0019 : List (List ℕ) :=
  [[7, 131],
     [7, 137],
     [7, 139],
     [7, 149],
     [7, 151],
     [7, 157],
     [7, 163],
     [7, 167],
     [7, 173],
     [7, 179],
     [7, 181],
     [7, 191],
     [7, 193],
     [7, 197],
     [7, 199],
     [7, 211]]

theorem k3FiveTwistGroup0019_passes :
    k3FiveTwistGroup0019.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0019_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
