import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0005 : List (List ℕ) :=
  [[3, 7, 11, 199],
     [3, 7, 13, 17],
     [3, 7, 13, 19],
     [3, 7, 13, 23],
     [3, 7, 13, 29],
     [3, 7, 13, 31],
     [3, 7, 13, 37],
     [3, 7, 13, 41]]

theorem k5FiveTwistGroup0005_passes :
    k5FiveTwistGroup0005.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0005_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
