import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0027 : List (List ℕ) :=
  [[3, 7, 41, 43],
     [3, 7, 41, 47],
     [3, 7, 41, 53],
     [3, 7, 41, 59],
     [3, 7, 41, 61],
     [3, 7, 41, 67],
     [3, 7, 41, 71],
     [3, 7, 41, 73]]

theorem k5FiveTwistGroup0027_passes :
    k5FiveTwistGroup0027.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0027_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
