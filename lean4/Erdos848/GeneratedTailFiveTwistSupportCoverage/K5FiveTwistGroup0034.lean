import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0034 : List (List ℕ) :=
  [[3, 7, 67, 71],
     [3, 7, 67, 73],
     [3, 7, 67, 79],
     [3, 7, 71, 73],
     [3, 7, 71, 79],
     [3, 11, 13, 17],
     [3, 11, 13, 19],
     [3, 11, 13, 23]]

theorem k5FiveTwistGroup0034_passes :
    k5FiveTwistGroup0034.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0034_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
