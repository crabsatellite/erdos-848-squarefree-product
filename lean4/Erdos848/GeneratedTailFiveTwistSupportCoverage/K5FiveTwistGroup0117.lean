import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0117 : List (List ℕ) :=
  [[11, 13, 17, 59],
     [11, 13, 17, 61],
     [11, 13, 19, 23],
     [11, 13, 19, 29],
     [11, 13, 19, 31],
     [11, 13, 19, 37],
     [11, 13, 19, 41],
     [11, 13, 19, 43]]

theorem k5FiveTwistGroup0117_passes :
    k5FiveTwistGroup0117.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0117_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
