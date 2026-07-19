import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0138 : List (List ℕ) :=
  [[13, 23, 59],
     [13, 23, 61],
     [13, 23, 67],
     [13, 23, 71],
     [13, 23, 73],
     [13, 23, 79],
     [13, 23, 83],
     [13, 23, 89],
     [13, 23, 97],
     [13, 23, 101],
     [13, 23, 103],
     [13, 23, 107],
     [13, 23, 109],
     [13, 23, 113],
     [13, 23, 127],
     [13, 23, 131]]

theorem k4FiveTwistGroup0138_passes :
    k4FiveTwistGroup0138.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0138_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
