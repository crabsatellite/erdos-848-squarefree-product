import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0189 : List (List ℕ) :=
  [[41, 47, 53],
     [41, 47, 59],
     [41, 47, 61],
     [41, 47, 67],
     [41, 47, 71],
     [41, 53, 59],
     [41, 53, 61],
     [41, 59, 61],
     [43, 47, 53],
     [43, 47, 59],
     [43, 47, 61],
     [43, 47, 67],
     [43, 53, 59],
     [43, 53, 61],
     [47, 53, 59]]

theorem k4FiveTwistGroup0189_passes :
    k4FiveTwistGroup0189.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0189_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
