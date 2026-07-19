import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0061 : List (List ℕ) :=
  [[3, 73, 103],
     [3, 73, 107],
     [3, 73, 109],
     [3, 73, 113],
     [3, 73, 127],
     [3, 73, 131],
     [3, 73, 137],
     [3, 73, 139],
     [3, 73, 149],
     [3, 73, 151],
     [3, 73, 157],
     [3, 73, 163],
     [3, 73, 167],
     [3, 73, 173],
     [3, 73, 179],
     [3, 73, 181]]

theorem k4FiveTwistGroup0061_passes :
    k4FiveTwistGroup0061.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0061_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
