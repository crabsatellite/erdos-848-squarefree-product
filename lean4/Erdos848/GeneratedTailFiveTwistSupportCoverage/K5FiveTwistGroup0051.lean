import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0051 : List (List ℕ) :=
  [[3, 11, 37, 71],
     [3, 11, 37, 73],
     [3, 11, 37, 79],
     [3, 11, 37, 83],
     [3, 11, 41, 43],
     [3, 11, 41, 47],
     [3, 11, 41, 53],
     [3, 11, 41, 59]]

theorem k5FiveTwistGroup0051_passes :
    k5FiveTwistGroup0051.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0051_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
