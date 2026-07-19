import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0047 : List (List ℕ) :=
  [[13, 761],
     [13, 769],
     [13, 773],
     [13, 787],
     [13, 797],
     [13, 809],
     [13, 811],
     [13, 821],
     [13, 823],
     [13, 827],
     [13, 829],
     [13, 839],
     [13, 853],
     [13, 857],
     [13, 859],
     [13, 863]]

theorem k3FiveTwistGroup0047_passes :
    k3FiveTwistGroup0047.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0047_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
