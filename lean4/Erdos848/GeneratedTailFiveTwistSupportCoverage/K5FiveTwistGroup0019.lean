import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0019 : List (List ℕ) :=
  [[3, 7, 23, 101],
     [3, 7, 23, 103],
     [3, 7, 23, 107],
     [3, 7, 23, 109],
     [3, 7, 23, 113],
     [3, 7, 23, 127],
     [3, 7, 23, 131],
     [3, 7, 23, 137]]

theorem k5FiveTwistGroup0019_passes :
    k5FiveTwistGroup0019.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0019_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
