import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0087 : List (List ℕ) :=
  [[3, 23, 29, 59],
     [3, 23, 29, 61],
     [3, 23, 29, 67],
     [3, 23, 31, 37],
     [3, 23, 31, 41],
     [3, 23, 31, 43],
     [3, 23, 31, 47],
     [3, 23, 31, 53]]

theorem k5FiveTwistGroup0087_passes :
    k5FiveTwistGroup0087.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0087_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
