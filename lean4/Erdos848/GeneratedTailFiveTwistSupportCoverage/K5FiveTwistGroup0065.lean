import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0065 : List (List ℕ) :=
  [[3, 13, 31, 41],
     [3, 13, 31, 43],
     [3, 13, 31, 47],
     [3, 13, 31, 53],
     [3, 13, 31, 59],
     [3, 13, 31, 61],
     [3, 13, 31, 67],
     [3, 13, 31, 71]]

theorem k5FiveTwistGroup0065_passes :
    k5FiveTwistGroup0065.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0065_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
