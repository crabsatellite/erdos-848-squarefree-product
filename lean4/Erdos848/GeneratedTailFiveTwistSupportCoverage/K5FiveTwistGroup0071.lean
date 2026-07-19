import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0071 : List (List ℕ) :=
  [[3, 17, 19, 37],
     [3, 17, 19, 41],
     [3, 17, 19, 43],
     [3, 17, 19, 47],
     [3, 17, 19, 53],
     [3, 17, 19, 59],
     [3, 17, 19, 61],
     [3, 17, 19, 67]]

theorem k5FiveTwistGroup0071_passes :
    k5FiveTwistGroup0071.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0071_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
