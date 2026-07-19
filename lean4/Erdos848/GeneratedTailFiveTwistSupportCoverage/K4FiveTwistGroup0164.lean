import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0164 : List (List ℕ) :=
  [[19, 23, 53],
     [19, 23, 59],
     [19, 23, 61],
     [19, 23, 67],
     [19, 23, 71],
     [19, 23, 73],
     [19, 23, 79],
     [19, 23, 83],
     [19, 23, 89],
     [19, 23, 97],
     [19, 23, 101],
     [19, 23, 103],
     [19, 23, 107],
     [19, 23, 109],
     [19, 23, 113],
     [19, 23, 127]]

theorem k4FiveTwistGroup0164_passes :
    k4FiveTwistGroup0164.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0164_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
