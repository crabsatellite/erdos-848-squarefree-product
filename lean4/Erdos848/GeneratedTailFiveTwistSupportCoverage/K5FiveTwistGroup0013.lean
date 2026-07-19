import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0013 : List (List ℕ) :=
  [[3, 7, 17, 149],
     [3, 7, 17, 151],
     [3, 7, 17, 157],
     [3, 7, 17, 163],
     [3, 7, 19, 23],
     [3, 7, 19, 29],
     [3, 7, 19, 31],
     [3, 7, 19, 37]]

theorem k5FiveTwistGroup0013_passes :
    k5FiveTwistGroup0013.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0013_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
