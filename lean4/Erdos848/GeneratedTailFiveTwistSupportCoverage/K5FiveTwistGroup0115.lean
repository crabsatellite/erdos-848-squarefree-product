import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0115 : List (List ℕ) :=
  [[7, 23, 29, 31],
     [7, 23, 29, 37],
     [7, 23, 29, 41],
     [7, 23, 29, 43],
     [7, 23, 31, 37],
     [7, 23, 31, 41],
     [7, 29, 31, 37],
     [11, 13, 17, 19]]

theorem k5FiveTwistGroup0115_passes :
    k5FiveTwistGroup0115.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0115_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
