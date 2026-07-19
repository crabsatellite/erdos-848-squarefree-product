import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0043 : List (List ℕ) :=
  [[3, 41, 71],
     [3, 41, 73],
     [3, 41, 79],
     [3, 41, 83],
     [3, 41, 89],
     [3, 41, 97],
     [3, 41, 101],
     [3, 41, 103],
     [3, 41, 107],
     [3, 41, 109],
     [3, 41, 113],
     [3, 41, 127],
     [3, 41, 131],
     [3, 41, 137],
     [3, 41, 139],
     [3, 41, 149]]

theorem k4FiveTwistGroup0043_passes :
    k4FiveTwistGroup0043.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0043_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
