import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0114 : List (List ℕ) :=
  [[67, 101],
     [67, 103],
     [67, 107],
     [67, 109],
     [67, 113],
     [67, 127],
     [67, 131],
     [67, 137],
     [67, 139],
     [67, 149],
     [67, 151],
     [67, 157],
     [67, 163],
     [67, 167],
     [67, 173],
     [67, 179]]

theorem k3FiveTwistGroup0114_passes :
    k3FiveTwistGroup0114.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0114_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
