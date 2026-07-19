import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0052 : List (List ℕ) :=
  [[3, 11, 41, 61],
     [3, 11, 41, 67],
     [3, 11, 41, 71],
     [3, 11, 41, 73],
     [3, 11, 41, 79],
     [3, 11, 41, 83],
     [3, 11, 43, 47],
     [3, 11, 43, 53]]

theorem k5FiveTwistGroup0052_passes :
    k5FiveTwistGroup0052.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0052_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
