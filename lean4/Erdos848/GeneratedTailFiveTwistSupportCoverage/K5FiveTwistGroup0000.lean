import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0000 : List (List ℕ) :=
  [[3, 7, 11, 13],
     [3, 7, 11, 17],
     [3, 7, 11, 19],
     [3, 7, 11, 23],
     [3, 7, 11, 29],
     [3, 7, 11, 31],
     [3, 7, 11, 37],
     [3, 7, 11, 41]]

theorem k5FiveTwistGroup0000_passes :
    k5FiveTwistGroup0000.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0000_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
