import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0107 : List (List ℕ) :=
  [[59, 139],
     [59, 149],
     [59, 151],
     [59, 157],
     [59, 163],
     [59, 167],
     [59, 173],
     [59, 179],
     [59, 181],
     [59, 191],
     [59, 193],
     [59, 197],
     [59, 199],
     [59, 211],
     [59, 223],
     [59, 227]]

theorem k3FiveTwistGroup0107_passes :
    k3FiveTwistGroup0107.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0107_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
