import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0086 : List (List ℕ) :=
  [[7, 19, 251],
     [7, 19, 257],
     [7, 19, 263],
     [7, 19, 269],
     [7, 19, 271],
     [7, 23, 29],
     [7, 23, 31],
     [7, 23, 37],
     [7, 23, 41],
     [7, 23, 43],
     [7, 23, 47],
     [7, 23, 53],
     [7, 23, 59],
     [7, 23, 61],
     [7, 23, 67],
     [7, 23, 71]]

theorem k4FiveTwistGroup0086_passes :
    k4FiveTwistGroup0086.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0086_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
