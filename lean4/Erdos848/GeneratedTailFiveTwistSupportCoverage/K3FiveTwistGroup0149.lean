import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0149 : List (List ℕ) :=
  [[137, 151],
     [137, 157],
     [137, 163],
     [137, 167],
     [137, 173],
     [137, 179],
     [137, 181],
     [137, 191],
     [137, 193],
     [137, 197],
     [137, 199],
     [137, 211],
     [137, 223],
     [137, 227],
     [137, 229],
     [137, 233]]

theorem k3FiveTwistGroup0149_passes :
    k3FiveTwistGroup0149.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0149_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
