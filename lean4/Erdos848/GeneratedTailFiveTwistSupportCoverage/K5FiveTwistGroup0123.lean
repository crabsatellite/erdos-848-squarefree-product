import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0123 : List (List ℕ) :=
  [[11, 19, 31, 37],
     [11, 23, 29, 31],
     [13, 17, 19, 23],
     [13, 17, 19, 29],
     [13, 17, 19, 31],
     [13, 17, 19, 37],
     [13, 17, 19, 41],
     [13, 17, 19, 43]]

theorem k5FiveTwistGroup0123_passes :
    k5FiveTwistGroup0123.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0123_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
