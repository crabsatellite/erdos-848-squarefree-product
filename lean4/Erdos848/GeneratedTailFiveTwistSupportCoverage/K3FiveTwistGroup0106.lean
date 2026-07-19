import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0106 : List (List ℕ) :=
  [[59, 61],
     [59, 67],
     [59, 71],
     [59, 73],
     [59, 79],
     [59, 83],
     [59, 89],
     [59, 97],
     [59, 101],
     [59, 103],
     [59, 107],
     [59, 109],
     [59, 113],
     [59, 127],
     [59, 131],
     [59, 137]]

theorem k3FiveTwistGroup0106_passes :
    k3FiveTwistGroup0106.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0106_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
