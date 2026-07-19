import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0125 : List (List ℕ) :=
  [[11, 41, 89],
     [11, 41, 97],
     [11, 41, 101],
     [11, 41, 103],
     [11, 41, 107],
     [11, 41, 109],
     [11, 41, 113],
     [11, 41, 127],
     [11, 41, 131],
     [11, 41, 137],
     [11, 41, 139],
     [11, 43, 47],
     [11, 43, 53],
     [11, 43, 59],
     [11, 43, 61],
     [11, 43, 67]]

theorem k4FiveTwistGroup0125_passes :
    k4FiveTwistGroup0125.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0125_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
