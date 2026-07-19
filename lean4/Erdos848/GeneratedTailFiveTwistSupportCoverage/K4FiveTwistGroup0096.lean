import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0096 : List (List ℕ) :=
  [[7, 41, 73],
     [7, 41, 79],
     [7, 41, 83],
     [7, 41, 89],
     [7, 41, 97],
     [7, 41, 101],
     [7, 41, 103],
     [7, 41, 107],
     [7, 41, 109],
     [7, 41, 113],
     [7, 41, 127],
     [7, 41, 131],
     [7, 41, 137],
     [7, 41, 139],
     [7, 41, 149],
     [7, 41, 151]]

theorem k4FiveTwistGroup0096_passes :
    k4FiveTwistGroup0096.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0096_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
