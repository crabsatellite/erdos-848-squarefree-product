import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0085 : List (List ℕ) :=
  [[3, 19, 41, 43],
     [3, 19, 41, 47],
     [3, 19, 41, 53],
     [3, 19, 41, 59],
     [3, 19, 41, 61],
     [3, 19, 43, 47],
     [3, 19, 43, 53],
     [3, 19, 43, 59]]

theorem k5FiveTwistGroup0085_passes :
    k5FiveTwistGroup0085.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0085_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
