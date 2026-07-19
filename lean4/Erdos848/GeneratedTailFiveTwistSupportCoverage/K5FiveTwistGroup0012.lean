import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0012 : List (List ℕ) :=
  [[3, 7, 17, 103],
     [3, 7, 17, 107],
     [3, 7, 17, 109],
     [3, 7, 17, 113],
     [3, 7, 17, 127],
     [3, 7, 17, 131],
     [3, 7, 17, 137],
     [3, 7, 17, 139]]

theorem k5FiveTwistGroup0012_passes :
    k5FiveTwistGroup0012.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0012_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
