import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0062 : List (List ℕ) :=
  [[19, 571],
     [19, 577],
     [19, 587],
     [19, 593],
     [19, 599],
     [19, 601],
     [19, 607],
     [19, 613],
     [19, 617],
     [19, 619],
     [19, 631],
     [19, 641],
     [19, 643],
     [19, 647],
     [19, 653],
     [19, 659]]

theorem k3FiveTwistGroup0062_passes :
    k3FiveTwistGroup0062.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0062_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
