import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0025 : List (List ℕ) :=
  [[7, 719],
     [7, 727],
     [7, 733],
     [7, 739],
     [7, 743],
     [7, 751],
     [7, 757],
     [7, 761],
     [7, 769],
     [7, 773],
     [7, 787],
     [7, 797],
     [7, 809],
     [7, 811],
     [7, 821],
     [7, 823]]

theorem k3FiveTwistGroup0025_passes :
    k3FiveTwistGroup0025.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0025_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
