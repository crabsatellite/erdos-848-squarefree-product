import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0063 : List (List ℕ) :=
  [[3, 13, 23, 103],
     [3, 13, 29, 31],
     [3, 13, 29, 37],
     [3, 13, 29, 41],
     [3, 13, 29, 43],
     [3, 13, 29, 47],
     [3, 13, 29, 53],
     [3, 13, 29, 59]]

theorem k5FiveTwistGroup0063_passes :
    k5FiveTwistGroup0063.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0063_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
