import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0140 : List (List ℕ) :=
  [[13, 29, 61],
     [13, 29, 67],
     [13, 29, 71],
     [13, 29, 73],
     [13, 29, 79],
     [13, 29, 83],
     [13, 29, 89],
     [13, 29, 97],
     [13, 29, 101],
     [13, 29, 103],
     [13, 29, 107],
     [13, 29, 109],
     [13, 29, 113],
     [13, 29, 127],
     [13, 29, 131],
     [13, 29, 137]]

theorem k4FiveTwistGroup0140_passes :
    k4FiveTwistGroup0140.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0140_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
