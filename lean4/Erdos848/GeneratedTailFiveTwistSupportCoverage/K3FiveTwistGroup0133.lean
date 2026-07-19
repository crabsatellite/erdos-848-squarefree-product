import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0133 : List (List ℕ) :=
  [[97, 163],
     [97, 167],
     [97, 173],
     [97, 179],
     [97, 181],
     [97, 191],
     [97, 193],
     [97, 197],
     [97, 199],
     [97, 211],
     [97, 223],
     [97, 227],
     [97, 229],
     [97, 233],
     [97, 239],
     [97, 241]]

theorem k3FiveTwistGroup0133_passes :
    k3FiveTwistGroup0133.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0133_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
