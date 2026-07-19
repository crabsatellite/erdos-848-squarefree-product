import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0049 : List (List ℕ) :=
  [[17, 89],
     [17, 97],
     [17, 101],
     [17, 103],
     [17, 107],
     [17, 109],
     [17, 113],
     [17, 127],
     [17, 131],
     [17, 137],
     [17, 139],
     [17, 149],
     [17, 151],
     [17, 157],
     [17, 163],
     [17, 167]]

theorem k3FiveTwistGroup0049_passes :
    k3FiveTwistGroup0049.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0049_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
