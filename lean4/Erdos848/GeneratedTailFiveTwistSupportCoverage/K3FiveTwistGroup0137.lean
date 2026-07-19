import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0137 : List (List ℕ) :=
  [[101, 307],
     [101, 311],
     [103, 107],
     [103, 109],
     [103, 113],
     [103, 127],
     [103, 131],
     [103, 137],
     [103, 139],
     [103, 149],
     [103, 151],
     [103, 157],
     [103, 163],
     [103, 167],
     [103, 173],
     [103, 179]]

theorem k3FiveTwistGroup0137_passes :
    k3FiveTwistGroup0137.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0137_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
