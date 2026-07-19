import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0143 : List (List ℕ) :=
  [[13, 37, 53],
     [13, 37, 59],
     [13, 37, 61],
     [13, 37, 67],
     [13, 37, 71],
     [13, 37, 73],
     [13, 37, 79],
     [13, 37, 83],
     [13, 37, 89],
     [13, 37, 97],
     [13, 37, 101],
     [13, 37, 103],
     [13, 37, 107],
     [13, 37, 109],
     [13, 37, 113],
     [13, 37, 127]]

theorem k4FiveTwistGroup0143_passes :
    k4FiveTwistGroup0143.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0143_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
