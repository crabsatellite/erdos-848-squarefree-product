import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0108 : List (List ℕ) :=
  [[7, 13, 31, 43],
     [7, 13, 31, 47],
     [7, 13, 31, 53],
     [7, 13, 37, 41],
     [7, 13, 37, 43],
     [7, 13, 37, 47],
     [7, 13, 41, 43],
     [7, 13, 41, 47]]

theorem k5FiveTwistGroup0108_passes :
    k5FiveTwistGroup0108.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0108_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
