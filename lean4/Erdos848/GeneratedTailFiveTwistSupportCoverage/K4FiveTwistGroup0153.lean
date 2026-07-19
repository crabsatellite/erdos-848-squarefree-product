import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0153 : List (List ℕ) :=
  [[17, 23, 29],
     [17, 23, 31],
     [17, 23, 37],
     [17, 23, 41],
     [17, 23, 43],
     [17, 23, 47],
     [17, 23, 53],
     [17, 23, 59],
     [17, 23, 61],
     [17, 23, 67],
     [17, 23, 71],
     [17, 23, 73],
     [17, 23, 79],
     [17, 23, 83],
     [17, 23, 89],
     [17, 23, 97]]

theorem k4FiveTwistGroup0153_passes :
    k4FiveTwistGroup0153.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0153_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
