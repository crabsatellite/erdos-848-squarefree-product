import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0007 : List (List ℕ) :=
  [[3, 641],
     [3, 643],
     [3, 647],
     [3, 653],
     [3, 659],
     [3, 661],
     [3, 673],
     [3, 677],
     [3, 683],
     [3, 691],
     [3, 701],
     [3, 709],
     [3, 719],
     [3, 727],
     [3, 733],
     [3, 739]]

theorem k3FiveTwistGroup0007_passes :
    k3FiveTwistGroup0007.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0007_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
