import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0103 : List (List ℕ) :=
  [[7, 13, 17, 43],
     [7, 13, 17, 47],
     [7, 13, 17, 53],
     [7, 13, 17, 59],
     [7, 13, 17, 61],
     [7, 13, 17, 67],
     [7, 13, 17, 71],
     [7, 13, 17, 73]]

theorem k5FiveTwistGroup0103_passes :
    k5FiveTwistGroup0103.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0103_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
