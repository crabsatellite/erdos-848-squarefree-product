import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0083 : List (List ℕ) :=
  [[3, 19, 29, 73],
     [3, 19, 31, 37],
     [3, 19, 31, 41],
     [3, 19, 31, 43],
     [3, 19, 31, 47],
     [3, 19, 31, 53],
     [3, 19, 31, 59],
     [3, 19, 31, 61]]

theorem k5FiveTwistGroup0083_passes :
    k5FiveTwistGroup0083.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0083_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
