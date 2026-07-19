import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0146 : List (List ℕ) :=
  [[13, 43, 97],
     [13, 43, 101],
     [13, 43, 103],
     [13, 43, 107],
     [13, 43, 109],
     [13, 43, 113],
     [13, 43, 127],
     [13, 47, 53],
     [13, 47, 59],
     [13, 47, 61],
     [13, 47, 67],
     [13, 47, 71],
     [13, 47, 73],
     [13, 47, 79],
     [13, 47, 83],
     [13, 47, 89]]

theorem k4FiveTwistGroup0146_passes :
    k4FiveTwistGroup0146.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0146_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
