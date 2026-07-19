import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0093 : List (List ℕ) :=
  [[7, 11, 13, 53],
     [7, 11, 13, 59],
     [7, 11, 13, 61],
     [7, 11, 13, 67],
     [7, 11, 13, 71],
     [7, 11, 13, 73],
     [7, 11, 13, 79],
     [7, 11, 13, 83]]

theorem k5FiveTwistGroup0093_passes :
    k5FiveTwistGroup0093.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0093_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
