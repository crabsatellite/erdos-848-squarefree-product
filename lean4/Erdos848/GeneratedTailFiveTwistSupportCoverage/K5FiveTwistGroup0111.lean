import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0111 : List (List ℕ) :=
  [[7, 17, 23, 47],
     [7, 17, 23, 53],
     [7, 17, 23, 59],
     [7, 17, 29, 31],
     [7, 17, 29, 37],
     [7, 17, 29, 41],
     [7, 17, 29, 43],
     [7, 17, 29, 47]]

theorem k5FiveTwistGroup0111_passes :
    k5FiveTwistGroup0111.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0111_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
