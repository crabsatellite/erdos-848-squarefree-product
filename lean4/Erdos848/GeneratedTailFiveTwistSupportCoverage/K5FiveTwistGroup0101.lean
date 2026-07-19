import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0101 : List (List ℕ) :=
  [[7, 11, 31, 59],
     [7, 11, 31, 61],
     [7, 11, 37, 41],
     [7, 11, 37, 43],
     [7, 11, 37, 47],
     [7, 11, 37, 53],
     [7, 11, 41, 43],
     [7, 11, 41, 47]]

theorem k5FiveTwistGroup0101_passes :
    k5FiveTwistGroup0101.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0101_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
