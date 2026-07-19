import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0122 : List (List ℕ) :=
  [[11, 17, 31, 37],
     [11, 19, 23, 29],
     [11, 19, 23, 31],
     [11, 19, 23, 37],
     [11, 19, 23, 41],
     [11, 19, 23, 43],
     [11, 19, 29, 31],
     [11, 19, 29, 37]]

theorem k5FiveTwistGroup0122_passes :
    k5FiveTwistGroup0122.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0122_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
