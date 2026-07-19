import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0102 : List (List ℕ) :=
  [[7, 11, 41, 53],
     [7, 11, 43, 47],
     [7, 13, 17, 19],
     [7, 13, 17, 23],
     [7, 13, 17, 29],
     [7, 13, 17, 31],
     [7, 13, 17, 37],
     [7, 13, 17, 41]]

theorem k5FiveTwistGroup0102_passes :
    k5FiveTwistGroup0102.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0102_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
