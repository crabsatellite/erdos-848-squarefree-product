import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0086 : List (List ℕ) :=
  [[3, 19, 47, 53],
     [3, 19, 47, 59],
     [3, 23, 29, 31],
     [3, 23, 29, 37],
     [3, 23, 29, 41],
     [3, 23, 29, 43],
     [3, 23, 29, 47],
     [3, 23, 29, 53]]

theorem k5FiveTwistGroup0086_passes :
    k5FiveTwistGroup0086.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0086_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
