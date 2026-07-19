import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0105 : List (List ℕ) :=
  [[7, 13, 19, 59],
     [7, 13, 19, 61],
     [7, 13, 19, 67],
     [7, 13, 19, 71],
     [7, 13, 19, 73],
     [7, 13, 23, 29],
     [7, 13, 23, 31],
     [7, 13, 23, 37]]

theorem k5FiveTwistGroup0105_passes :
    k5FiveTwistGroup0105.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0105_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
