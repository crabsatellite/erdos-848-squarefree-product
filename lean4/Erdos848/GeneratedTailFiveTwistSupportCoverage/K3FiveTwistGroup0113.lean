import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0113 : List (List ℕ) :=
  [[61, 347],
     [61, 349],
     [61, 353],
     [61, 359],
     [61, 367],
     [61, 373],
     [61, 379],
     [61, 383],
     [61, 389],
     [61, 397],
     [67, 71],
     [67, 73],
     [67, 79],
     [67, 83],
     [67, 89],
     [67, 97]]

theorem k3FiveTwistGroup0113_passes :
    k3FiveTwistGroup0113.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0113_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
