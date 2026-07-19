import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0100 : List (List ℕ) :=
  [[7, 11, 29, 53],
     [7, 11, 29, 59],
     [7, 11, 29, 61],
     [7, 11, 31, 37],
     [7, 11, 31, 41],
     [7, 11, 31, 43],
     [7, 11, 31, 47],
     [7, 11, 31, 53]]

theorem k5FiveTwistGroup0100_passes :
    k5FiveTwistGroup0100.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0100_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
