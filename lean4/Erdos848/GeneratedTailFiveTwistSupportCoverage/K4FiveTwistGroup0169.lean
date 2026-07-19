import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0169 : List (List ℕ) :=
  [[19, 41, 47],
     [19, 41, 53],
     [19, 41, 59],
     [19, 41, 61],
     [19, 41, 67],
     [19, 41, 71],
     [19, 41, 73],
     [19, 41, 79],
     [19, 41, 83],
     [19, 41, 89],
     [19, 41, 97],
     [19, 41, 101],
     [19, 41, 103],
     [19, 41, 107],
     [19, 41, 109],
     [19, 43, 47]]

theorem k4FiveTwistGroup0169_passes :
    k4FiveTwistGroup0169.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0169_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
