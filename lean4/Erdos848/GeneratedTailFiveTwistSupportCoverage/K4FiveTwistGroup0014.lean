import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0014 : List (List ℕ) :=
  [[3, 13, 53],
     [3, 13, 59],
     [3, 13, 61],
     [3, 13, 67],
     [3, 13, 71],
     [3, 13, 73],
     [3, 13, 79],
     [3, 13, 83],
     [3, 13, 89],
     [3, 13, 97],
     [3, 13, 101],
     [3, 13, 103],
     [3, 13, 107],
     [3, 13, 109],
     [3, 13, 113],
     [3, 13, 127]]

theorem k4FiveTwistGroup0014_passes :
    k4FiveTwistGroup0014.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0014_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
