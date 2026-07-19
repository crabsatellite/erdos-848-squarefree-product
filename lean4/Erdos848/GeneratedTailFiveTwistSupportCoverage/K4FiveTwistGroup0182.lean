import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0182 : List (List ℕ) :=
  [[29, 41, 61],
     [29, 41, 67],
     [29, 41, 71],
     [29, 41, 73],
     [29, 41, 79],
     [29, 41, 83],
     [29, 43, 47],
     [29, 43, 53],
     [29, 43, 59],
     [29, 43, 61],
     [29, 43, 67],
     [29, 43, 71],
     [29, 43, 73],
     [29, 43, 79],
     [29, 43, 83],
     [29, 47, 53]]

theorem k4FiveTwistGroup0182_passes :
    k4FiveTwistGroup0182.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0182_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
