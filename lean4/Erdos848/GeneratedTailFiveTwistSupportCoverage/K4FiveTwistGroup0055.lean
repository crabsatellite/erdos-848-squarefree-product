import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0055 : List (List ℕ) :=
  [[3, 59, 211],
     [3, 59, 223],
     [3, 59, 227],
     [3, 59, 229],
     [3, 59, 233],
     [3, 61, 67],
     [3, 61, 71],
     [3, 61, 73],
     [3, 61, 79],
     [3, 61, 83],
     [3, 61, 89],
     [3, 61, 97],
     [3, 61, 101],
     [3, 61, 103],
     [3, 61, 107],
     [3, 61, 109]]

theorem k4FiveTwistGroup0055_passes :
    k4FiveTwistGroup0055.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0055_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
