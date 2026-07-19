import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0063 : List (List ℕ) :=
  [[19, 661],
     [19, 673],
     [19, 677],
     [19, 683],
     [19, 691],
     [19, 701],
     [19, 709],
     [19, 719],
     [23, 29],
     [23, 31],
     [23, 37],
     [23, 41],
     [23, 43],
     [23, 47],
     [23, 53],
     [23, 59]]

theorem k3FiveTwistGroup0063_passes :
    k3FiveTwistGroup0063.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0063_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
