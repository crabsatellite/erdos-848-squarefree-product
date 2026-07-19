import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0049 : List (List ℕ) :=
  [[3, 47, 103],
     [3, 47, 107],
     [3, 47, 109],
     [3, 47, 113],
     [3, 47, 127],
     [3, 47, 131],
     [3, 47, 137],
     [3, 47, 139],
     [3, 47, 149],
     [3, 47, 151],
     [3, 47, 157],
     [3, 47, 163],
     [3, 47, 167],
     [3, 47, 173],
     [3, 47, 179],
     [3, 47, 181]]

theorem k4FiveTwistGroup0049_passes :
    k4FiveTwistGroup0049.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0049_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
