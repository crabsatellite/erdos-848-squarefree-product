import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0054 : List (List ℕ) :=
  [[17, 569],
     [17, 571],
     [17, 577],
     [17, 587],
     [17, 593],
     [17, 599],
     [17, 601],
     [17, 607],
     [17, 613],
     [17, 617],
     [17, 619],
     [17, 631],
     [17, 641],
     [17, 643],
     [17, 647],
     [17, 653]]

theorem k3FiveTwistGroup0054_passes :
    k3FiveTwistGroup0054.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0054_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
