import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0048 : List (List ℕ) :=
  [[3, 43, 251],
     [3, 43, 257],
     [3, 43, 263],
     [3, 43, 269],
     [3, 43, 271],
     [3, 47, 53],
     [3, 47, 59],
     [3, 47, 61],
     [3, 47, 67],
     [3, 47, 71],
     [3, 47, 73],
     [3, 47, 79],
     [3, 47, 83],
     [3, 47, 89],
     [3, 47, 97],
     [3, 47, 101]]

theorem k4FiveTwistGroup0048_passes :
    k4FiveTwistGroup0048.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0048_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
