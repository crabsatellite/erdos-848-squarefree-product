import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0037 : List (List ℕ) :=
  [[3, 11, 13, 101],
     [3, 11, 13, 103],
     [3, 11, 13, 107],
     [3, 11, 13, 109],
     [3, 11, 13, 113],
     [3, 11, 13, 127],
     [3, 11, 13, 131],
     [3, 11, 13, 137]]

theorem k5FiveTwistGroup0037_passes :
    k5FiveTwistGroup0037.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0037_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
