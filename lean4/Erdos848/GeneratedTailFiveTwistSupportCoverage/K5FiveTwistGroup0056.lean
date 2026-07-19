import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0056 : List (List ℕ) :=
  [[3, 13, 17, 41],
     [3, 13, 17, 43],
     [3, 13, 17, 47],
     [3, 13, 17, 53],
     [3, 13, 17, 59],
     [3, 13, 17, 61],
     [3, 13, 17, 67],
     [3, 13, 17, 71]]

theorem k5FiveTwistGroup0056_passes :
    k5FiveTwistGroup0056.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0056_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
