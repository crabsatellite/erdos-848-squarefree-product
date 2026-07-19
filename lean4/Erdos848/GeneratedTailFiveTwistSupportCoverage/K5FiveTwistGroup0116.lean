import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0116 : List (List ℕ) :=
  [[11, 13, 17, 23],
     [11, 13, 17, 29],
     [11, 13, 17, 31],
     [11, 13, 17, 37],
     [11, 13, 17, 41],
     [11, 13, 17, 43],
     [11, 13, 17, 47],
     [11, 13, 17, 53]]

theorem k5FiveTwistGroup0116_passes :
    k5FiveTwistGroup0116.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0116_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
