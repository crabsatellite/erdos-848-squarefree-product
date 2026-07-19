import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0046 : List (List ℕ) :=
  [[13, 653],
     [13, 659],
     [13, 661],
     [13, 673],
     [13, 677],
     [13, 683],
     [13, 691],
     [13, 701],
     [13, 709],
     [13, 719],
     [13, 727],
     [13, 733],
     [13, 739],
     [13, 743],
     [13, 751],
     [13, 757]]

theorem k3FiveTwistGroup0046_passes :
    k3FiveTwistGroup0046.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0046_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
