import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0142 : List (List ℕ) :=
  [[109, 163],
     [109, 167],
     [109, 173],
     [109, 179],
     [109, 181],
     [109, 191],
     [109, 193],
     [109, 197],
     [109, 199],
     [109, 211],
     [109, 223],
     [109, 227],
     [109, 229],
     [109, 233],
     [109, 239],
     [109, 241]]

theorem k3FiveTwistGroup0142_passes :
    k3FiveTwistGroup0142.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0142_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
