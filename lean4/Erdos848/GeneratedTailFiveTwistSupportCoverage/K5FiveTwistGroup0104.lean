import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0104 : List (List ℕ) :=
  [[7, 13, 19, 23],
     [7, 13, 19, 29],
     [7, 13, 19, 31],
     [7, 13, 19, 37],
     [7, 13, 19, 41],
     [7, 13, 19, 43],
     [7, 13, 19, 47],
     [7, 13, 19, 53]]

theorem k5FiveTwistGroup0104_passes :
    k5FiveTwistGroup0104.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0104_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
