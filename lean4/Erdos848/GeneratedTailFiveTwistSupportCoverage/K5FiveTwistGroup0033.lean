import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0033 : List (List ℕ) :=
  [[3, 7, 59, 73],
     [3, 7, 59, 79],
     [3, 7, 59, 83],
     [3, 7, 61, 67],
     [3, 7, 61, 71],
     [3, 7, 61, 73],
     [3, 7, 61, 79],
     [3, 7, 61, 83]]

theorem k5FiveTwistGroup0033_passes :
    k5FiveTwistGroup0033.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0033_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
