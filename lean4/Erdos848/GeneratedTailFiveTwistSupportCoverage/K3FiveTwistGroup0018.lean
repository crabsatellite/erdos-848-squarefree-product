import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0018 : List (List ℕ) :=
  [[7, 53],
     [7, 59],
     [7, 61],
     [7, 67],
     [7, 71],
     [7, 73],
     [7, 79],
     [7, 83],
     [7, 89],
     [7, 97],
     [7, 101],
     [7, 103],
     [7, 107],
     [7, 109],
     [7, 113],
     [7, 127]]

theorem k3FiveTwistGroup0018_passes :
    k3FiveTwistGroup0018.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0018_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
