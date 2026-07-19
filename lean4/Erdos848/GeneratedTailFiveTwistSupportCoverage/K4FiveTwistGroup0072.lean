import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0072 : List (List ℕ) :=
  [[7, 11, 17],
     [7, 11, 19],
     [7, 11, 23],
     [7, 11, 29],
     [7, 11, 31],
     [7, 11, 37],
     [7, 11, 41],
     [7, 11, 43],
     [7, 11, 47],
     [7, 11, 53],
     [7, 11, 59],
     [7, 11, 61],
     [7, 11, 67],
     [7, 11, 71],
     [7, 11, 73],
     [7, 11, 79]]

theorem k4FiveTwistGroup0072_passes :
    k4FiveTwistGroup0072.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0072_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
