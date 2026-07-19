import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0008 : List (List ℕ) :=
  [[3, 743],
     [3, 751],
     [3, 757],
     [3, 761],
     [3, 769],
     [3, 773],
     [3, 787],
     [3, 797],
     [3, 809],
     [3, 811],
     [3, 821],
     [3, 823],
     [3, 827],
     [3, 829],
     [3, 839],
     [3, 853]]

theorem k3FiveTwistGroup0008_passes :
    k3FiveTwistGroup0008.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0008_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
