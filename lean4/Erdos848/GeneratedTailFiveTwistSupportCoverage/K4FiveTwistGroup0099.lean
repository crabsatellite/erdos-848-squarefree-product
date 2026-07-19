import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0099 : List (List ℕ) :=
  [[7, 43, 179],
     [7, 47, 53],
     [7, 47, 59],
     [7, 47, 61],
     [7, 47, 67],
     [7, 47, 71],
     [7, 47, 73],
     [7, 47, 79],
     [7, 47, 83],
     [7, 47, 89],
     [7, 47, 97],
     [7, 47, 101],
     [7, 47, 103],
     [7, 47, 107],
     [7, 47, 109],
     [7, 47, 113]]

theorem k4FiveTwistGroup0099_passes :
    k4FiveTwistGroup0099.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0099_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
