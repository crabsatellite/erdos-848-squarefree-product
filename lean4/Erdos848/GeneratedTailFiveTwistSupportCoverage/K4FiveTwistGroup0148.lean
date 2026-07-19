import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0148 : List (List ℕ) :=
  [[13, 53, 103],
     [13, 53, 107],
     [13, 53, 109],
     [13, 53, 113],
     [13, 59, 61],
     [13, 59, 67],
     [13, 59, 71],
     [13, 59, 73],
     [13, 59, 79],
     [13, 59, 83],
     [13, 59, 89],
     [13, 59, 97],
     [13, 59, 101],
     [13, 59, 103],
     [13, 59, 107],
     [13, 59, 109]]

theorem k4FiveTwistGroup0148_passes :
    k4FiveTwistGroup0148.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0148_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
