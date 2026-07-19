import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0022 : List (List ℕ) :=
  [[3, 7, 29, 103],
     [3, 7, 29, 107],
     [3, 7, 29, 109],
     [3, 7, 29, 113],
     [3, 7, 31, 37],
     [3, 7, 31, 41],
     [3, 7, 31, 43],
     [3, 7, 31, 47]]

theorem k5FiveTwistGroup0022_passes :
    k5FiveTwistGroup0022.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0022_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
