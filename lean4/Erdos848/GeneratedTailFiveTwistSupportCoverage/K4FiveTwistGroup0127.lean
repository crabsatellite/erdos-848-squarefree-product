import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0127 : List (List ℕ) :=
  [[11, 47, 59],
     [11, 47, 61],
     [11, 47, 67],
     [11, 47, 71],
     [11, 47, 73],
     [11, 47, 79],
     [11, 47, 83],
     [11, 47, 89],
     [11, 47, 97],
     [11, 47, 101],
     [11, 47, 103],
     [11, 47, 107],
     [11, 47, 109],
     [11, 47, 113],
     [11, 47, 127],
     [11, 47, 131]]

theorem k4FiveTwistGroup0127_passes :
    k4FiveTwistGroup0127.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0127_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
