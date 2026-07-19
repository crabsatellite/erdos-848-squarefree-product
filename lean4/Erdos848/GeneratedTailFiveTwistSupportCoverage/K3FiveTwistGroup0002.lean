import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0002 : List (List ℕ) :=
  [[3, 151],
     [3, 157],
     [3, 163],
     [3, 167],
     [3, 173],
     [3, 179],
     [3, 181],
     [3, 191],
     [3, 193],
     [3, 197],
     [3, 199],
     [3, 211],
     [3, 223],
     [3, 227],
     [3, 229],
     [3, 233]]

theorem k3FiveTwistGroup0002_passes :
    k3FiveTwistGroup0002.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0002_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
