import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0031 : List (List ℕ) :=
  [[11, 139],
     [11, 149],
     [11, 151],
     [11, 157],
     [11, 163],
     [11, 167],
     [11, 173],
     [11, 179],
     [11, 181],
     [11, 191],
     [11, 193],
     [11, 197],
     [11, 199],
     [11, 211],
     [11, 223],
     [11, 227]]

theorem k3FiveTwistGroup0031_passes :
    k3FiveTwistGroup0031.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0031_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
