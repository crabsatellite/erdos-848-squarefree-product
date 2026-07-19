import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0019 : List (List ℕ) :=
  [[3, 13, 503],
     [3, 17, 19],
     [3, 17, 23],
     [3, 17, 29],
     [3, 17, 31],
     [3, 17, 37],
     [3, 17, 41],
     [3, 17, 43],
     [3, 17, 47],
     [3, 17, 53],
     [3, 17, 59],
     [3, 17, 61],
     [3, 17, 67],
     [3, 17, 71],
     [3, 17, 73],
     [3, 17, 79]]

theorem k4FiveTwistGroup0019_passes :
    k4FiveTwistGroup0019.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0019_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
