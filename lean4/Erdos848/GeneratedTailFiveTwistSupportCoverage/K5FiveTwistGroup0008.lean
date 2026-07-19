import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0008 : List (List ℕ) :=
  [[3, 7, 13, 113],
     [3, 7, 13, 127],
     [3, 7, 13, 131],
     [3, 7, 13, 137],
     [3, 7, 13, 139],
     [3, 7, 13, 149],
     [3, 7, 13, 151],
     [3, 7, 13, 157]]

theorem k5FiveTwistGroup0008_passes :
    k5FiveTwistGroup0008.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0008_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
