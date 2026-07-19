import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0120 : List (List ℕ) :=
  [[11, 29, 83],
     [11, 29, 89],
     [11, 29, 97],
     [11, 29, 101],
     [11, 29, 103],
     [11, 29, 107],
     [11, 29, 109],
     [11, 29, 113],
     [11, 29, 127],
     [11, 29, 131],
     [11, 29, 137],
     [11, 29, 139],
     [11, 29, 149],
     [11, 29, 151],
     [11, 29, 157],
     [11, 29, 163]]

theorem k4FiveTwistGroup0120_passes :
    k4FiveTwistGroup0120.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0120_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
