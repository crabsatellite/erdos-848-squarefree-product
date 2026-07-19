import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0126 : List (List ℕ) :=
  [[11, 43, 71],
     [11, 43, 73],
     [11, 43, 79],
     [11, 43, 83],
     [11, 43, 89],
     [11, 43, 97],
     [11, 43, 101],
     [11, 43, 103],
     [11, 43, 107],
     [11, 43, 109],
     [11, 43, 113],
     [11, 43, 127],
     [11, 43, 131],
     [11, 43, 137],
     [11, 43, 139],
     [11, 47, 53]]

theorem k4FiveTwistGroup0126_passes :
    k4FiveTwistGroup0126.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0126_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
