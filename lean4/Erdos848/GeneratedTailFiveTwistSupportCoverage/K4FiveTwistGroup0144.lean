import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0144 : List (List ℕ) :=
  [[13, 37, 131],
     [13, 37, 137],
     [13, 37, 139],
     [13, 41, 43],
     [13, 41, 47],
     [13, 41, 53],
     [13, 41, 59],
     [13, 41, 61],
     [13, 41, 67],
     [13, 41, 71],
     [13, 41, 73],
     [13, 41, 79],
     [13, 41, 83],
     [13, 41, 89],
     [13, 41, 97],
     [13, 41, 101]]

theorem k4FiveTwistGroup0144_passes :
    k4FiveTwistGroup0144.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0144_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
