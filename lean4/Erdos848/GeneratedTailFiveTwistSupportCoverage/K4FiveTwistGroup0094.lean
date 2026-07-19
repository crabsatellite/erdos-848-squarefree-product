import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0094 : List (List ℕ) :=
  [[7, 37, 71],
     [7, 37, 73],
     [7, 37, 79],
     [7, 37, 83],
     [7, 37, 89],
     [7, 37, 97],
     [7, 37, 101],
     [7, 37, 103],
     [7, 37, 107],
     [7, 37, 109],
     [7, 37, 113],
     [7, 37, 127],
     [7, 37, 131],
     [7, 37, 137],
     [7, 37, 139],
     [7, 37, 149]]

theorem k4FiveTwistGroup0094_passes :
    k4FiveTwistGroup0094.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0094_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
