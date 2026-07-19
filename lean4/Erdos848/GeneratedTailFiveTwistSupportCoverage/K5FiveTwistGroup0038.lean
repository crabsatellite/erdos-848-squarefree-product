import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0038 : List (List ℕ) :=
  [[3, 11, 13, 139],
     [3, 11, 13, 149],
     [3, 11, 17, 19],
     [3, 11, 17, 23],
     [3, 11, 17, 29],
     [3, 11, 17, 31],
     [3, 11, 17, 37],
     [3, 11, 17, 41]]

theorem k5FiveTwistGroup0038_passes :
    k5FiveTwistGroup0038.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0038_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
