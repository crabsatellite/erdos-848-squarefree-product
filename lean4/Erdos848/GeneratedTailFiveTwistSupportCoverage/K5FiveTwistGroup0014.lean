import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0014 : List (List ℕ) :=
  [[3, 7, 19, 41],
     [3, 7, 19, 43],
     [3, 7, 19, 47],
     [3, 7, 19, 53],
     [3, 7, 19, 59],
     [3, 7, 19, 61],
     [3, 7, 19, 67],
     [3, 7, 19, 71]]

theorem k5FiveTwistGroup0014_passes :
    k5FiveTwistGroup0014.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0014_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
