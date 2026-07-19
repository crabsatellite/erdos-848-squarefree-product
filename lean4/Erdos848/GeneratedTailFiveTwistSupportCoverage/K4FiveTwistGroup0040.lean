import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0040 : List (List ℕ) :=
  [[3, 37, 73],
     [3, 37, 79],
     [3, 37, 83],
     [3, 37, 89],
     [3, 37, 97],
     [3, 37, 101],
     [3, 37, 103],
     [3, 37, 107],
     [3, 37, 109],
     [3, 37, 113],
     [3, 37, 127],
     [3, 37, 131],
     [3, 37, 137],
     [3, 37, 139],
     [3, 37, 149],
     [3, 37, 151]]

theorem k4FiveTwistGroup0040_passes :
    k4FiveTwistGroup0040.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0040_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
