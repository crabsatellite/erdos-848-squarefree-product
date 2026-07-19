import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0127 : List (List ℕ) :=
  [[83, 107],
     [83, 109],
     [83, 113],
     [83, 127],
     [83, 131],
     [83, 137],
     [83, 139],
     [83, 149],
     [83, 151],
     [83, 157],
     [83, 163],
     [83, 167],
     [83, 173],
     [83, 179],
     [83, 181],
     [83, 191]]

theorem k3FiveTwistGroup0127_passes :
    k3FiveTwistGroup0127.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0127_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
