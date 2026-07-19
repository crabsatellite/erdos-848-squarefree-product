import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0097 : List (List ℕ) :=
  [[7, 41, 157],
     [7, 41, 163],
     [7, 41, 167],
     [7, 41, 173],
     [7, 41, 179],
     [7, 41, 181],
     [7, 43, 47],
     [7, 43, 53],
     [7, 43, 59],
     [7, 43, 61],
     [7, 43, 67],
     [7, 43, 71],
     [7, 43, 73],
     [7, 43, 79],
     [7, 43, 83],
     [7, 43, 89]]

theorem k4FiveTwistGroup0097_passes :
    k4FiveTwistGroup0097.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0097_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
