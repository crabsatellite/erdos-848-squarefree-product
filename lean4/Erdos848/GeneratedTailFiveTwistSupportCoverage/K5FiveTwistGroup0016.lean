import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0016 : List (List ℕ) :=
  [[3, 7, 19, 109],
     [3, 7, 19, 113],
     [3, 7, 19, 127],
     [3, 7, 19, 131],
     [3, 7, 19, 137],
     [3, 7, 19, 139],
     [3, 7, 19, 149],
     [3, 7, 19, 151]]

theorem k5FiveTwistGroup0016_passes :
    k5FiveTwistGroup0016.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0016_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
