import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0092 : List (List ℕ) :=
  [[7, 11, 13, 19],
     [7, 11, 13, 23],
     [7, 11, 13, 29],
     [7, 11, 13, 31],
     [7, 11, 13, 37],
     [7, 11, 13, 41],
     [7, 11, 13, 43],
     [7, 11, 13, 47]]

theorem k5FiveTwistGroup0092_passes :
    k5FiveTwistGroup0092.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0092_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
