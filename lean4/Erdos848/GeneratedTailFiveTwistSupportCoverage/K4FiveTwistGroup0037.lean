import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0037 : List (List ℕ) :=
  [[3, 31, 103],
     [3, 31, 107],
     [3, 31, 109],
     [3, 31, 113],
     [3, 31, 127],
     [3, 31, 131],
     [3, 31, 137],
     [3, 31, 139],
     [3, 31, 149],
     [3, 31, 151],
     [3, 31, 157],
     [3, 31, 163],
     [3, 31, 167],
     [3, 31, 173],
     [3, 31, 179],
     [3, 31, 181]]

theorem k4FiveTwistGroup0037_passes :
    k4FiveTwistGroup0037.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0037_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
