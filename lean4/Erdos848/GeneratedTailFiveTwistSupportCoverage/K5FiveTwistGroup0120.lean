import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0120 : List (List ℕ) :=
  [[11, 13, 37, 41],
     [11, 17, 19, 23],
     [11, 17, 19, 29],
     [11, 17, 19, 31],
     [11, 17, 19, 37],
     [11, 17, 19, 41],
     [11, 17, 19, 43],
     [11, 17, 19, 47]]

theorem k5FiveTwistGroup0120_passes :
    k5FiveTwistGroup0120.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0120_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
