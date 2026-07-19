import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0110 : List (List ℕ) :=
  [[11, 13, 101],
     [11, 13, 103],
     [11, 13, 107],
     [11, 13, 109],
     [11, 13, 113],
     [11, 13, 127],
     [11, 13, 131],
     [11, 13, 137],
     [11, 13, 139],
     [11, 13, 149],
     [11, 13, 151],
     [11, 13, 157],
     [11, 13, 163],
     [11, 13, 167],
     [11, 13, 173],
     [11, 13, 179]]

theorem k4FiveTwistGroup0110_passes :
    k4FiveTwistGroup0110.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0110_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
