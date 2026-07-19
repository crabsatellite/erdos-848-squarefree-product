import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0064 : List (List ℕ) :=
  [[3, 83, 107],
     [3, 83, 109],
     [3, 83, 113],
     [3, 83, 127],
     [3, 83, 131],
     [3, 83, 137],
     [3, 83, 139],
     [3, 83, 149],
     [3, 83, 151],
     [3, 83, 157],
     [3, 83, 163],
     [3, 83, 167],
     [3, 83, 173],
     [3, 83, 179],
     [3, 83, 181],
     [3, 83, 191]]

theorem k4FiveTwistGroup0064_passes :
    k4FiveTwistGroup0064.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0064_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
