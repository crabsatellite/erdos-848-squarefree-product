import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0009 : List (List ℕ) :=
  [[3, 7, 13, 163],
     [3, 7, 13, 167],
     [3, 7, 13, 173],
     [3, 7, 13, 179],
     [3, 7, 13, 181],
     [3, 7, 17, 19],
     [3, 7, 17, 23],
     [3, 7, 17, 29]]

theorem k5FiveTwistGroup0009_passes :
    k5FiveTwistGroup0009.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0009_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
