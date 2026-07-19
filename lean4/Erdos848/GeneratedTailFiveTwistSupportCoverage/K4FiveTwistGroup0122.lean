import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0122 : List (List ℕ) :=
  [[11, 31, 101],
     [11, 31, 103],
     [11, 31, 107],
     [11, 31, 109],
     [11, 31, 113],
     [11, 31, 127],
     [11, 31, 131],
     [11, 31, 137],
     [11, 31, 139],
     [11, 31, 149],
     [11, 31, 151],
     [11, 31, 157],
     [11, 31, 163],
     [11, 31, 167],
     [11, 37, 41],
     [11, 37, 43]]

theorem k4FiveTwistGroup0122_passes :
    k4FiveTwistGroup0122.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0122_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
