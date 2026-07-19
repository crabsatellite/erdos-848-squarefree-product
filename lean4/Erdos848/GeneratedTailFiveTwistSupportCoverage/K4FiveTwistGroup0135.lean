import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0135 : List (List ℕ) :=
  [[13, 17, 191],
     [13, 17, 193],
     [13, 17, 197],
     [13, 17, 199],
     [13, 19, 23],
     [13, 19, 29],
     [13, 19, 31],
     [13, 19, 37],
     [13, 19, 41],
     [13, 19, 43],
     [13, 19, 47],
     [13, 19, 53],
     [13, 19, 59],
     [13, 19, 61],
     [13, 19, 67],
     [13, 19, 71]]

theorem k4FiveTwistGroup0135_passes :
    k4FiveTwistGroup0135.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0135_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
