import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0055 : List (List ℕ) :=
  [[17, 659],
     [17, 661],
     [17, 673],
     [17, 677],
     [17, 683],
     [17, 691],
     [17, 701],
     [17, 709],
     [17, 719],
     [17, 727],
     [17, 733],
     [17, 739],
     [17, 743],
     [17, 751],
     [17, 757],
     [17, 761]]

theorem k3FiveTwistGroup0055_passes :
    k3FiveTwistGroup0055.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0055_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
