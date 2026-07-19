import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0102 : List (List ℕ) :=
  [[7, 59, 71],
     [7, 59, 73],
     [7, 59, 79],
     [7, 59, 83],
     [7, 59, 89],
     [7, 59, 97],
     [7, 59, 101],
     [7, 59, 103],
     [7, 59, 107],
     [7, 59, 109],
     [7, 59, 113],
     [7, 59, 127],
     [7, 59, 131],
     [7, 59, 137],
     [7, 59, 139],
     [7, 59, 149]]

theorem k4FiveTwistGroup0102_passes :
    k4FiveTwistGroup0102.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0102_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
