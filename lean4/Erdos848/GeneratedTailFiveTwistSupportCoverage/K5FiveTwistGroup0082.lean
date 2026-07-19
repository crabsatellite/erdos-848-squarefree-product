import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0082 : List (List ℕ) :=
  [[3, 19, 29, 41],
     [3, 19, 29, 43],
     [3, 19, 29, 47],
     [3, 19, 29, 53],
     [3, 19, 29, 59],
     [3, 19, 29, 61],
     [3, 19, 29, 67],
     [3, 19, 29, 71]]

theorem k5FiveTwistGroup0082_passes :
    k5FiveTwistGroup0082.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0082_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
