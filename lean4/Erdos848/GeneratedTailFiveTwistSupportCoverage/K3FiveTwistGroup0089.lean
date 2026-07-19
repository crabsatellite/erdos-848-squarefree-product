import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0089 : List (List ℕ) :=
  [[41, 167],
     [41, 173],
     [41, 179],
     [41, 181],
     [41, 191],
     [41, 193],
     [41, 197],
     [41, 199],
     [41, 211],
     [41, 223],
     [41, 227],
     [41, 229],
     [41, 233],
     [41, 239],
     [41, 241],
     [41, 251]]

theorem k3FiveTwistGroup0089_passes :
    k3FiveTwistGroup0089.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0089_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
