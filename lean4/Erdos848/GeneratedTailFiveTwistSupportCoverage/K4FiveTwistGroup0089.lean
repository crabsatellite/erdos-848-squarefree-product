import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0089 : List (List ℕ) :=
  [[7, 23, 241],
     [7, 29, 31],
     [7, 29, 37],
     [7, 29, 41],
     [7, 29, 43],
     [7, 29, 47],
     [7, 29, 53],
     [7, 29, 59],
     [7, 29, 61],
     [7, 29, 67],
     [7, 29, 71],
     [7, 29, 73],
     [7, 29, 79],
     [7, 29, 83],
     [7, 29, 89],
     [7, 29, 97]]

theorem k4FiveTwistGroup0089_passes :
    k4FiveTwistGroup0089.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0089_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
