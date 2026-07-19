import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0003 : List (List ℕ) :=
  [[3, 7, 11, 113],
     [3, 7, 11, 127],
     [3, 7, 11, 131],
     [3, 7, 11, 137],
     [3, 7, 11, 139],
     [3, 7, 11, 149],
     [3, 7, 11, 151],
     [3, 7, 11, 157]]

theorem k5FiveTwistGroup0003_passes :
    k5FiveTwistGroup0003.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0003_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
