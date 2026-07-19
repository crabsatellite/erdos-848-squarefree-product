import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0058 : List (List ℕ) :=
  [[3, 67, 127],
     [3, 67, 131],
     [3, 67, 137],
     [3, 67, 139],
     [3, 67, 149],
     [3, 67, 151],
     [3, 67, 157],
     [3, 67, 163],
     [3, 67, 167],
     [3, 67, 173],
     [3, 67, 179],
     [3, 67, 181],
     [3, 67, 191],
     [3, 67, 193],
     [3, 67, 197],
     [3, 67, 199]]

theorem k4FiveTwistGroup0058_passes :
    k4FiveTwistGroup0058.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0058_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
