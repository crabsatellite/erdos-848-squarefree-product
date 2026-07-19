import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0117 : List (List ℕ) :=
  [[67, 373],
     [67, 379],
     [67, 383],
     [71, 73],
     [71, 79],
     [71, 83],
     [71, 89],
     [71, 97],
     [71, 101],
     [71, 103],
     [71, 107],
     [71, 109],
     [71, 113],
     [71, 127],
     [71, 131],
     [71, 137]]

theorem k3FiveTwistGroup0117_passes :
    k3FiveTwistGroup0117.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0117_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
