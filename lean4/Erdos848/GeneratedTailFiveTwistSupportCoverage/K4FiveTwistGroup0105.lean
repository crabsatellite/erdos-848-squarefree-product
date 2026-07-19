import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0105 : List (List ℕ) :=
  [[7, 67, 139],
     [7, 71, 73],
     [7, 71, 79],
     [7, 71, 83],
     [7, 71, 89],
     [7, 71, 97],
     [7, 71, 101],
     [7, 71, 103],
     [7, 71, 107],
     [7, 71, 109],
     [7, 71, 113],
     [7, 71, 127],
     [7, 71, 131],
     [7, 71, 137],
     [7, 73, 79],
     [7, 73, 83]]

theorem k4FiveTwistGroup0105_passes :
    k4FiveTwistGroup0105.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0105_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
