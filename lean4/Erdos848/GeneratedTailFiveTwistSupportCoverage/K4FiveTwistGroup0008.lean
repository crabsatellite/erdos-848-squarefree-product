import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0008 : List (List ℕ) :=
  [[3, 11, 43],
     [3, 11, 47],
     [3, 11, 53],
     [3, 11, 59],
     [3, 11, 61],
     [3, 11, 67],
     [3, 11, 71],
     [3, 11, 73],
     [3, 11, 79],
     [3, 11, 83],
     [3, 11, 89],
     [3, 11, 97],
     [3, 11, 101],
     [3, 11, 103],
     [3, 11, 107],
     [3, 11, 109]]

theorem k4FiveTwistGroup0008_passes :
    k4FiveTwistGroup0008.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0008_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
