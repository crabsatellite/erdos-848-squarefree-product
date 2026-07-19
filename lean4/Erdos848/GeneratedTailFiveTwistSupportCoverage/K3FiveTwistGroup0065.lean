import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0065 : List (List ℕ) :=
  [[23, 139],
     [23, 149],
     [23, 151],
     [23, 157],
     [23, 163],
     [23, 167],
     [23, 173],
     [23, 179],
     [23, 181],
     [23, 191],
     [23, 193],
     [23, 197],
     [23, 199],
     [23, 211],
     [23, 223],
     [23, 227]]

theorem k3FiveTwistGroup0065_passes :
    k3FiveTwistGroup0065.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0065_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
