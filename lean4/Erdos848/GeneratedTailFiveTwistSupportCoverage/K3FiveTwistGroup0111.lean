import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0111 : List (List ℕ) :=
  [[61, 157],
     [61, 163],
     [61, 167],
     [61, 173],
     [61, 179],
     [61, 181],
     [61, 191],
     [61, 193],
     [61, 197],
     [61, 199],
     [61, 211],
     [61, 223],
     [61, 227],
     [61, 229],
     [61, 233],
     [61, 239]]

theorem k3FiveTwistGroup0111_passes :
    k3FiveTwistGroup0111.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0111_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
