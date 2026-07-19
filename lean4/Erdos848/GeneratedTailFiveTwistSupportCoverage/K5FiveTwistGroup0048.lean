import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0048 : List (List ℕ) :=
  [[3, 11, 29, 83],
     [3, 11, 29, 89],
     [3, 11, 29, 97],
     [3, 11, 29, 101],
     [3, 11, 31, 37],
     [3, 11, 31, 41],
     [3, 11, 31, 43],
     [3, 11, 31, 47]]

theorem k5FiveTwistGroup0048_passes :
    k5FiveTwistGroup0048.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0048_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
