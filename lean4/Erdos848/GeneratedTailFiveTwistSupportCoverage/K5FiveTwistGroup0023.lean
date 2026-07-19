import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0023 : List (List ℕ) :=
  [[3, 7, 31, 53],
     [3, 7, 31, 59],
     [3, 7, 31, 61],
     [3, 7, 31, 67],
     [3, 7, 31, 71],
     [3, 7, 31, 73],
     [3, 7, 31, 79],
     [3, 7, 31, 83]]

theorem k5FiveTwistGroup0023_passes :
    k5FiveTwistGroup0023.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0023_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
