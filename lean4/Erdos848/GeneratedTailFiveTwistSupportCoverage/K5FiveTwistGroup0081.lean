import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0081 : List (List ℕ) :=
  [[3, 19, 23, 61],
     [3, 19, 23, 67],
     [3, 19, 23, 71],
     [3, 19, 23, 73],
     [3, 19, 23, 79],
     [3, 19, 23, 83],
     [3, 19, 29, 31],
     [3, 19, 29, 37]]

theorem k5FiveTwistGroup0081_passes :
    k5FiveTwistGroup0081.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0081_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
