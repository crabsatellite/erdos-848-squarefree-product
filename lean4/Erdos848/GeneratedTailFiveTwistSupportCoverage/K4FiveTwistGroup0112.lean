import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0112 : List (List ℕ) :=
  [[11, 17, 29],
     [11, 17, 31],
     [11, 17, 37],
     [11, 17, 41],
     [11, 17, 43],
     [11, 17, 47],
     [11, 17, 53],
     [11, 17, 59],
     [11, 17, 61],
     [11, 17, 67],
     [11, 17, 71],
     [11, 17, 73],
     [11, 17, 79],
     [11, 17, 83],
     [11, 17, 89],
     [11, 17, 97]]

theorem k4FiveTwistGroup0112_passes :
    k4FiveTwistGroup0112.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0112_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
