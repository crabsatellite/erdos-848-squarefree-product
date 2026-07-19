import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0080 : List (List ℕ) :=
  [[7, 17, 31],
     [7, 17, 37],
     [7, 17, 41],
     [7, 17, 43],
     [7, 17, 47],
     [7, 17, 53],
     [7, 17, 59],
     [7, 17, 61],
     [7, 17, 67],
     [7, 17, 71],
     [7, 17, 73],
     [7, 17, 79],
     [7, 17, 83],
     [7, 17, 89],
     [7, 17, 97],
     [7, 17, 101]]

theorem k4FiveTwistGroup0080_passes :
    k4FiveTwistGroup0080.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0080_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
