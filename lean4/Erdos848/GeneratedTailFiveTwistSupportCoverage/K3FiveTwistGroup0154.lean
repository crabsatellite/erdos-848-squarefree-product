import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0154 : List (List ℕ) :=
  [[151, 251],
     [157, 163],
     [157, 167],
     [157, 173],
     [157, 179],
     [157, 181],
     [157, 191],
     [157, 193],
     [157, 197],
     [157, 199],
     [157, 211],
     [157, 223],
     [157, 227],
     [157, 229],
     [157, 233],
     [157, 239]]

theorem k3FiveTwistGroup0154_passes :
    k3FiveTwistGroup0154.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0154_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
