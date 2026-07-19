import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0130 : List (List ℕ) :=
  [[11, 61, 79],
     [11, 61, 83],
     [11, 61, 89],
     [11, 61, 97],
     [11, 61, 101],
     [11, 61, 103],
     [11, 61, 107],
     [11, 61, 109],
     [11, 61, 113],
     [11, 67, 71],
     [11, 67, 73],
     [11, 67, 79],
     [11, 67, 83],
     [11, 67, 89],
     [11, 67, 97],
     [11, 67, 101]]

theorem k4FiveTwistGroup0130_passes :
    k4FiveTwistGroup0130.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0130_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
