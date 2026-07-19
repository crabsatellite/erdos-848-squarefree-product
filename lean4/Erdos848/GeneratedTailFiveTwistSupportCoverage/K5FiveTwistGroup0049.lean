import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0049 : List (List ℕ) :=
  [[3, 11, 31, 53],
     [3, 11, 31, 59],
     [3, 11, 31, 61],
     [3, 11, 31, 67],
     [3, 11, 31, 71],
     [3, 11, 31, 73],
     [3, 11, 31, 79],
     [3, 11, 31, 83]]

theorem k5FiveTwistGroup0049_passes :
    k5FiveTwistGroup0049.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0049_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
