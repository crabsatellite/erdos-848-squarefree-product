import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0181 : List (List ℕ) :=
  [[29, 37, 41],
     [29, 37, 43],
     [29, 37, 47],
     [29, 37, 53],
     [29, 37, 59],
     [29, 37, 61],
     [29, 37, 67],
     [29, 37, 71],
     [29, 37, 73],
     [29, 37, 79],
     [29, 37, 83],
     [29, 37, 89],
     [29, 41, 43],
     [29, 41, 47],
     [29, 41, 53],
     [29, 41, 59]]

theorem k4FiveTwistGroup0181_passes :
    k4FiveTwistGroup0181.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0181_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
