import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0158 : List (List ℕ) :=
  [[179, 227],
     [179, 229],
     [179, 233],
     [181, 191],
     [181, 193],
     [181, 197],
     [181, 199],
     [181, 211],
     [181, 223],
     [181, 227],
     [181, 229],
     [191, 193],
     [191, 197],
     [191, 199],
     [191, 211],
     [191, 223]]

theorem k3FiveTwistGroup0158_passes :
    k3FiveTwistGroup0158.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0158_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
