import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0078 : List (List ℕ) :=
  [[3, 17, 37, 67],
     [3, 17, 37, 71],
     [3, 17, 41, 43],
     [3, 17, 41, 47],
     [3, 17, 41, 53],
     [3, 17, 41, 59],
     [3, 17, 41, 61],
     [3, 17, 41, 67]]

theorem k5FiveTwistGroup0078_passes :
    k5FiveTwistGroup0078.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0078_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
