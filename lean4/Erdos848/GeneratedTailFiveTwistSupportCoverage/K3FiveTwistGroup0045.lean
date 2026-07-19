import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0045 : List (List ℕ) :=
  [[13, 563],
     [13, 569],
     [13, 571],
     [13, 577],
     [13, 587],
     [13, 593],
     [13, 599],
     [13, 601],
     [13, 607],
     [13, 613],
     [13, 617],
     [13, 619],
     [13, 631],
     [13, 641],
     [13, 643],
     [13, 647]]

theorem k3FiveTwistGroup0045_passes :
    k3FiveTwistGroup0045.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0045_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
