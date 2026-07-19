import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0180 : List (List ℕ) :=
  [[29, 31, 37],
     [29, 31, 41],
     [29, 31, 43],
     [29, 31, 47],
     [29, 31, 53],
     [29, 31, 59],
     [29, 31, 61],
     [29, 31, 67],
     [29, 31, 71],
     [29, 31, 73],
     [29, 31, 79],
     [29, 31, 83],
     [29, 31, 89],
     [29, 31, 97],
     [29, 31, 101],
     [29, 31, 103]]

theorem k4FiveTwistGroup0180_passes :
    k4FiveTwistGroup0180.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0180_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
