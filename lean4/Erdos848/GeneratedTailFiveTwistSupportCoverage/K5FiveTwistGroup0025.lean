import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0025 : List (List ℕ) :=
  [[3, 7, 37, 43],
     [3, 7, 37, 47],
     [3, 7, 37, 53],
     [3, 7, 37, 59],
     [3, 7, 37, 61],
     [3, 7, 37, 67],
     [3, 7, 37, 71],
     [3, 7, 37, 73]]

theorem k5FiveTwistGroup0025_passes :
    k5FiveTwistGroup0025.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0025_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
