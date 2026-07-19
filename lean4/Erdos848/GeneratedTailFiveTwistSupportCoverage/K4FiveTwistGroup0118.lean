import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0118 : List (List ℕ) :=
  [[11, 23, 101],
     [11, 23, 103],
     [11, 23, 107],
     [11, 23, 109],
     [11, 23, 113],
     [11, 23, 127],
     [11, 23, 131],
     [11, 23, 137],
     [11, 23, 139],
     [11, 23, 149],
     [11, 23, 151],
     [11, 23, 157],
     [11, 23, 163],
     [11, 23, 167],
     [11, 23, 173],
     [11, 23, 179]]

theorem k4FiveTwistGroup0118_passes :
    k4FiveTwistGroup0118.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0118_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
