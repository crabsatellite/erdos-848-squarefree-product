import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0028 : List (List ℕ) :=
  [[3, 7, 41, 79],
     [3, 7, 41, 83],
     [3, 7, 41, 89],
     [3, 7, 41, 97],
     [3, 7, 41, 101],
     [3, 7, 41, 103],
     [3, 7, 43, 47],
     [3, 7, 43, 53]]

theorem k5FiveTwistGroup0028_passes :
    k5FiveTwistGroup0028.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0028_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
