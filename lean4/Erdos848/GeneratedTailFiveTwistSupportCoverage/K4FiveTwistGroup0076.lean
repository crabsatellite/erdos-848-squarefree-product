import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0076 : List (List ℕ) :=
  [[7, 11, 353],
     [7, 13, 17],
     [7, 13, 19],
     [7, 13, 23],
     [7, 13, 29],
     [7, 13, 31],
     [7, 13, 37],
     [7, 13, 41],
     [7, 13, 43],
     [7, 13, 47],
     [7, 13, 53],
     [7, 13, 59],
     [7, 13, 61],
     [7, 13, 67],
     [7, 13, 71],
     [7, 13, 73]]

theorem k4FiveTwistGroup0076_passes :
    k4FiveTwistGroup0076.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0076_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
