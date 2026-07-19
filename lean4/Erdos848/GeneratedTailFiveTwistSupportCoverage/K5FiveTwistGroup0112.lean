import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0112 : List (List ℕ) :=
  [[7, 17, 31, 37],
     [7, 17, 31, 41],
     [7, 17, 31, 43],
     [7, 17, 31, 47],
     [7, 17, 37, 41],
     [7, 17, 37, 43],
     [7, 17, 41, 43],
     [7, 19, 23, 29]]

theorem k5FiveTwistGroup0112_passes :
    k5FiveTwistGroup0112.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0112_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
