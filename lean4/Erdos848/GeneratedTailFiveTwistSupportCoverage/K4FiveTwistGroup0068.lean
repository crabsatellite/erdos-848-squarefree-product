import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0068 : List (List ℕ) :=
  [[3, 101, 163],
     [3, 101, 167],
     [3, 101, 173],
     [3, 101, 179],
     [3, 103, 107],
     [3, 103, 109],
     [3, 103, 113],
     [3, 103, 127],
     [3, 103, 131],
     [3, 103, 137],
     [3, 103, 139],
     [3, 103, 149],
     [3, 103, 151],
     [3, 103, 157],
     [3, 103, 163],
     [3, 103, 167]]

theorem k4FiveTwistGroup0068_passes :
    k4FiveTwistGroup0068.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0068_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
