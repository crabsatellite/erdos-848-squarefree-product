import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0159 : List (List ℕ) :=
  [[191, 227],
     [193, 197],
     [193, 199],
     [193, 211],
     [193, 223],
     [197, 199],
     [197, 211],
     [197, 223],
     [199, 211]]

theorem k3FiveTwistGroup0159_passes :
    k3FiveTwistGroup0159.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0159_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
