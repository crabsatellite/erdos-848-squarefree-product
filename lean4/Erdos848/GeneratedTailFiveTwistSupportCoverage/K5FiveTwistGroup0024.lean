import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0024 : List (List ℕ) :=
  [[3, 7, 31, 89],
     [3, 7, 31, 97],
     [3, 7, 31, 101],
     [3, 7, 31, 103],
     [3, 7, 31, 107],
     [3, 7, 31, 109],
     [3, 7, 31, 113],
     [3, 7, 37, 41]]

theorem k5FiveTwistGroup0024_passes :
    k5FiveTwistGroup0024.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0024_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
