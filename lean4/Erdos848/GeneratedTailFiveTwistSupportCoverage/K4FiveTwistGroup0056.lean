import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0056 : List (List ℕ) :=
  [[3, 61, 113],
     [3, 61, 127],
     [3, 61, 131],
     [3, 61, 137],
     [3, 61, 139],
     [3, 61, 149],
     [3, 61, 151],
     [3, 61, 157],
     [3, 61, 163],
     [3, 61, 167],
     [3, 61, 173],
     [3, 61, 179],
     [3, 61, 181],
     [3, 61, 191],
     [3, 61, 193],
     [3, 61, 197]]

theorem k4FiveTwistGroup0056_passes :
    k4FiveTwistGroup0056.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0056_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
