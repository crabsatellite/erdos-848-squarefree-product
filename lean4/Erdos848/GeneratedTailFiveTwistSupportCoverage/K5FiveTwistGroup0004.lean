import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0004 : List (List ℕ) :=
  [[3, 7, 11, 163],
     [3, 7, 11, 167],
     [3, 7, 11, 173],
     [3, 7, 11, 179],
     [3, 7, 11, 181],
     [3, 7, 11, 191],
     [3, 7, 11, 193],
     [3, 7, 11, 197]]

theorem k5FiveTwistGroup0004_passes :
    k5FiveTwistGroup0004.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0004_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
