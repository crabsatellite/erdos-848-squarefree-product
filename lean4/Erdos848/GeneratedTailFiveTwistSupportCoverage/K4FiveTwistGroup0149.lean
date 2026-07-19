import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0149 : List (List ℕ) :=
  [[13, 61, 67],
     [13, 61, 71],
     [13, 61, 73],
     [13, 61, 79],
     [13, 61, 83],
     [13, 61, 89],
     [13, 61, 97],
     [13, 61, 101],
     [13, 61, 103],
     [13, 61, 107],
     [13, 61, 109],
     [13, 67, 71],
     [13, 67, 73],
     [13, 67, 79],
     [13, 67, 83],
     [13, 67, 89]]

theorem k4FiveTwistGroup0149_passes :
    k4FiveTwistGroup0149.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0149_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
