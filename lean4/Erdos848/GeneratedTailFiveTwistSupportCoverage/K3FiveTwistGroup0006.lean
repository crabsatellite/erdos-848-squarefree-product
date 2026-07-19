import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0006 : List (List ℕ) :=
  [[3, 541],
     [3, 547],
     [3, 557],
     [3, 563],
     [3, 569],
     [3, 571],
     [3, 577],
     [3, 587],
     [3, 593],
     [3, 599],
     [3, 601],
     [3, 607],
     [3, 613],
     [3, 617],
     [3, 619],
     [3, 631]]

theorem k3FiveTwistGroup0006_passes :
    k3FiveTwistGroup0006.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0006_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
