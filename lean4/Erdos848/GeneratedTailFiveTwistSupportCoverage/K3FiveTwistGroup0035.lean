import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0035 : List (List ℕ) :=
  [[11, 521],
     [11, 523],
     [11, 541],
     [11, 547],
     [11, 557],
     [11, 563],
     [11, 569],
     [11, 571],
     [11, 577],
     [11, 587],
     [11, 593],
     [11, 599],
     [11, 601],
     [11, 607],
     [11, 613],
     [11, 617]]

theorem k3FiveTwistGroup0035_passes :
    k3FiveTwistGroup0035.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0035_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
