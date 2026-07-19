import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0113 : List (List ℕ) :=
  [[11, 17, 101],
     [11, 17, 103],
     [11, 17, 107],
     [11, 17, 109],
     [11, 17, 113],
     [11, 17, 127],
     [11, 17, 131],
     [11, 17, 137],
     [11, 17, 139],
     [11, 17, 149],
     [11, 17, 151],
     [11, 17, 157],
     [11, 17, 163],
     [11, 17, 167],
     [11, 17, 173],
     [11, 17, 179]]

theorem k4FiveTwistGroup0113_passes :
    k4FiveTwistGroup0113.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0113_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
