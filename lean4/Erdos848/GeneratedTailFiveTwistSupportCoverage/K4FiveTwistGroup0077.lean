import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0077 : List (List ℕ) :=
  [[7, 13, 79],
     [7, 13, 83],
     [7, 13, 89],
     [7, 13, 97],
     [7, 13, 101],
     [7, 13, 103],
     [7, 13, 107],
     [7, 13, 109],
     [7, 13, 113],
     [7, 13, 127],
     [7, 13, 131],
     [7, 13, 137],
     [7, 13, 139],
     [7, 13, 149],
     [7, 13, 151],
     [7, 13, 157]]

theorem k4FiveTwistGroup0077_passes :
    k4FiveTwistGroup0077.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0077_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
