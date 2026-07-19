import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0037 : List (List ℕ) :=
  [[11, 733],
     [11, 739],
     [11, 743],
     [11, 751],
     [11, 757],
     [11, 761],
     [11, 769],
     [11, 773],
     [11, 787],
     [11, 797],
     [11, 809],
     [11, 811],
     [11, 821],
     [11, 823],
     [11, 827],
     [11, 829]]

theorem k3FiveTwistGroup0037_passes :
    k3FiveTwistGroup0037.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0037_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
