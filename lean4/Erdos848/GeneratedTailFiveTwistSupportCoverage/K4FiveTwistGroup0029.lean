import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0029 : List (List ℕ) :=
  [[3, 23, 67],
     [3, 23, 71],
     [3, 23, 73],
     [3, 23, 79],
     [3, 23, 83],
     [3, 23, 89],
     [3, 23, 97],
     [3, 23, 101],
     [3, 23, 103],
     [3, 23, 107],
     [3, 23, 109],
     [3, 23, 113],
     [3, 23, 127],
     [3, 23, 131],
     [3, 23, 137],
     [3, 23, 139]]

theorem k4FiveTwistGroup0029_passes :
    k4FiveTwistGroup0029.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0029_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
