import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0106 : List (List ℕ) :=
  [[7, 73, 89],
     [7, 73, 97],
     [7, 73, 101],
     [7, 73, 103],
     [7, 73, 107],
     [7, 73, 109],
     [7, 73, 113],
     [7, 73, 127],
     [7, 73, 131],
     [7, 73, 137],
     [7, 79, 83],
     [7, 79, 89],
     [7, 79, 97],
     [7, 79, 101],
     [7, 79, 103],
     [7, 79, 107]]

theorem k4FiveTwistGroup0106_passes :
    k4FiveTwistGroup0106.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0106_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
