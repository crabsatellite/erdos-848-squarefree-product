import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0170 : List (List ℕ) :=
  [[19, 43, 53],
     [19, 43, 59],
     [19, 43, 61],
     [19, 43, 67],
     [19, 43, 71],
     [19, 43, 73],
     [19, 43, 79],
     [19, 43, 83],
     [19, 43, 89],
     [19, 43, 97],
     [19, 43, 101],
     [19, 43, 103],
     [19, 43, 107],
     [19, 47, 53],
     [19, 47, 59],
     [19, 47, 61]]

theorem k4FiveTwistGroup0170_passes :
    k4FiveTwistGroup0170.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0170_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
