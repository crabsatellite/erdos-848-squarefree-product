import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0107 : List (List ℕ) :=
  [[7, 13, 29, 37],
     [7, 13, 29, 41],
     [7, 13, 29, 43],
     [7, 13, 29, 47],
     [7, 13, 29, 53],
     [7, 13, 29, 59],
     [7, 13, 31, 37],
     [7, 13, 31, 41]]

theorem k5FiveTwistGroup0107_passes :
    k5FiveTwistGroup0107.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0107_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
