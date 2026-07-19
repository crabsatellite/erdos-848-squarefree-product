import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0061 : List (List ℕ) :=
  [[3, 13, 23, 31],
     [3, 13, 23, 37],
     [3, 13, 23, 41],
     [3, 13, 23, 43],
     [3, 13, 23, 47],
     [3, 13, 23, 53],
     [3, 13, 23, 59],
     [3, 13, 23, 61]]

theorem k5FiveTwistGroup0061_passes :
    k5FiveTwistGroup0061.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0061_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
