import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0109 : List (List ℕ) :=
  [[11, 13, 29],
     [11, 13, 31],
     [11, 13, 37],
     [11, 13, 41],
     [11, 13, 43],
     [11, 13, 47],
     [11, 13, 53],
     [11, 13, 59],
     [11, 13, 61],
     [11, 13, 67],
     [11, 13, 71],
     [11, 13, 73],
     [11, 13, 79],
     [11, 13, 83],
     [11, 13, 89],
     [11, 13, 97]]

theorem k4FiveTwistGroup0109_passes :
    k4FiveTwistGroup0109.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0109_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
