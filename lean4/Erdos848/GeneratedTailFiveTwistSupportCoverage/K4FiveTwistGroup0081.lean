import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0081 : List (List ℕ) :=
  [[7, 17, 103],
     [7, 17, 107],
     [7, 17, 109],
     [7, 17, 113],
     [7, 17, 127],
     [7, 17, 131],
     [7, 17, 137],
     [7, 17, 139],
     [7, 17, 149],
     [7, 17, 151],
     [7, 17, 157],
     [7, 17, 163],
     [7, 17, 167],
     [7, 17, 173],
     [7, 17, 179],
     [7, 17, 181]]

theorem k4FiveTwistGroup0081_passes :
    k4FiveTwistGroup0081.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0081_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
