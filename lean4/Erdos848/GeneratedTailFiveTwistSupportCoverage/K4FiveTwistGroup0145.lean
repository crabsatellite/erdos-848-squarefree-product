import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0145 : List (List ℕ) :=
  [[13, 41, 103],
     [13, 41, 107],
     [13, 41, 109],
     [13, 41, 113],
     [13, 41, 127],
     [13, 41, 131],
     [13, 43, 47],
     [13, 43, 53],
     [13, 43, 59],
     [13, 43, 61],
     [13, 43, 67],
     [13, 43, 71],
     [13, 43, 73],
     [13, 43, 79],
     [13, 43, 83],
     [13, 43, 89]]

theorem k4FiveTwistGroup0145_passes :
    k4FiveTwistGroup0145.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0145_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
