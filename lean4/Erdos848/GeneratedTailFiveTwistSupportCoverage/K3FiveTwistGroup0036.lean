import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0036 : List (List ℕ) :=
  [[11, 619],
     [11, 631],
     [11, 641],
     [11, 643],
     [11, 647],
     [11, 653],
     [11, 659],
     [11, 661],
     [11, 673],
     [11, 677],
     [11, 683],
     [11, 691],
     [11, 701],
     [11, 709],
     [11, 719],
     [11, 727]]

theorem k3FiveTwistGroup0036_passes :
    k3FiveTwistGroup0036.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0036_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
