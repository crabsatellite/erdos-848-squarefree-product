import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0179 : List (List ℕ) :=
  [[23, 53, 71],
     [23, 53, 73],
     [23, 53, 79],
     [23, 53, 83],
     [23, 59, 61],
     [23, 59, 67],
     [23, 59, 71],
     [23, 59, 73],
     [23, 59, 79],
     [23, 61, 67],
     [23, 61, 71],
     [23, 61, 73],
     [23, 61, 79],
     [23, 67, 71],
     [23, 67, 73],
     [23, 71, 73]]

theorem k4FiveTwistGroup0179_passes :
    k4FiveTwistGroup0179.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0179_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
