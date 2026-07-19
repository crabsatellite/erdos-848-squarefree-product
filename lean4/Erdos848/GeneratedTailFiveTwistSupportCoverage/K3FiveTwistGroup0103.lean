import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0103 : List (List ℕ) :=
  [[53, 151],
     [53, 157],
     [53, 163],
     [53, 167],
     [53, 173],
     [53, 179],
     [53, 181],
     [53, 191],
     [53, 193],
     [53, 197],
     [53, 199],
     [53, 211],
     [53, 223],
     [53, 227],
     [53, 229],
     [53, 233]]

theorem k3FiveTwistGroup0103_passes :
    k3FiveTwistGroup0103.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0103_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
