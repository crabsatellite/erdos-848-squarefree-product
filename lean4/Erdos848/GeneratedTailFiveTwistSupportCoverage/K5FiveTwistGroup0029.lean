import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0029 : List (List ℕ) :=
  [[3, 7, 43, 59],
     [3, 7, 43, 61],
     [3, 7, 43, 67],
     [3, 7, 43, 71],
     [3, 7, 43, 73],
     [3, 7, 43, 79],
     [3, 7, 43, 83],
     [3, 7, 43, 89]]

theorem k5FiveTwistGroup0029_passes :
    k5FiveTwistGroup0029.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0029_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
