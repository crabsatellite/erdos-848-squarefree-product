import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0051 : List (List ℕ) :=
  [[3, 53, 67],
     [3, 53, 71],
     [3, 53, 73],
     [3, 53, 79],
     [3, 53, 83],
     [3, 53, 89],
     [3, 53, 97],
     [3, 53, 101],
     [3, 53, 103],
     [3, 53, 107],
     [3, 53, 109],
     [3, 53, 113],
     [3, 53, 127],
     [3, 53, 131],
     [3, 53, 137],
     [3, 53, 139]]

theorem k4FiveTwistGroup0051_passes :
    k4FiveTwistGroup0051.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0051_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
