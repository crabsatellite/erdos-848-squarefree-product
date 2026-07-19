import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0024 : List (List ℕ) :=
  [[7, 613],
     [7, 617],
     [7, 619],
     [7, 631],
     [7, 641],
     [7, 643],
     [7, 647],
     [7, 653],
     [7, 659],
     [7, 661],
     [7, 673],
     [7, 677],
     [7, 683],
     [7, 691],
     [7, 701],
     [7, 709]]

theorem k3FiveTwistGroup0024_passes :
    k3FiveTwistGroup0024.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0024_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
