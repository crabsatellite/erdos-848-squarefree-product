import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0101 : List (List ℕ) :=
  [[7, 53, 89],
     [7, 53, 97],
     [7, 53, 101],
     [7, 53, 103],
     [7, 53, 107],
     [7, 53, 109],
     [7, 53, 113],
     [7, 53, 127],
     [7, 53, 131],
     [7, 53, 137],
     [7, 53, 139],
     [7, 53, 149],
     [7, 53, 151],
     [7, 53, 157],
     [7, 59, 61],
     [7, 59, 67]]

theorem k4FiveTwistGroup0101_passes :
    k4FiveTwistGroup0101.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0101_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
