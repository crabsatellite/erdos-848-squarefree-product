import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0000 : List (List ℕ) :=
  [[3, 7, 11],
     [3, 7, 13],
     [3, 7, 17],
     [3, 7, 19],
     [3, 7, 23],
     [3, 7, 29],
     [3, 7, 31],
     [3, 7, 37],
     [3, 7, 41],
     [3, 7, 43],
     [3, 7, 47],
     [3, 7, 53],
     [3, 7, 59],
     [3, 7, 61],
     [3, 7, 67],
     [3, 7, 71]]

theorem k4FiveTwistGroup0000_passes :
    k4FiveTwistGroup0000.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0000_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
