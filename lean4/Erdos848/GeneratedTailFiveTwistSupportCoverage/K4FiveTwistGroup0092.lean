import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0092 : List (List ℕ) :=
  [[7, 31, 79],
     [7, 31, 83],
     [7, 31, 89],
     [7, 31, 97],
     [7, 31, 101],
     [7, 31, 103],
     [7, 31, 107],
     [7, 31, 109],
     [7, 31, 113],
     [7, 31, 127],
     [7, 31, 131],
     [7, 31, 137],
     [7, 31, 139],
     [7, 31, 149],
     [7, 31, 151],
     [7, 31, 157]]

theorem k4FiveTwistGroup0092_passes :
    k4FiveTwistGroup0092.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0092_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
