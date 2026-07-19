import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0124 : List (List ℕ) :=
  [[79, 103],
     [79, 107],
     [79, 109],
     [79, 113],
     [79, 127],
     [79, 131],
     [79, 137],
     [79, 139],
     [79, 149],
     [79, 151],
     [79, 157],
     [79, 163],
     [79, 167],
     [79, 173],
     [79, 179],
     [79, 181]]

theorem k3FiveTwistGroup0124_passes :
    k3FiveTwistGroup0124.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0124_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
