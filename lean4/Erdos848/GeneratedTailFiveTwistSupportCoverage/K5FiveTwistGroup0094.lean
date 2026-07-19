import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0094 : List (List ℕ) :=
  [[7, 11, 13, 89],
     [7, 11, 13, 97],
     [7, 11, 17, 19],
     [7, 11, 17, 23],
     [7, 11, 17, 29],
     [7, 11, 17, 31],
     [7, 11, 17, 37],
     [7, 11, 17, 41]]

theorem k5FiveTwistGroup0094_passes :
    k5FiveTwistGroup0094.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0094_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
