import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0058 : List (List ℕ) :=
  [[3, 13, 17, 109],
     [3, 13, 17, 113],
     [3, 13, 19, 23],
     [3, 13, 19, 29],
     [3, 13, 19, 31],
     [3, 13, 19, 37],
     [3, 13, 19, 41],
     [3, 13, 19, 43]]

theorem k5FiveTwistGroup0058_passes :
    k5FiveTwistGroup0058.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0058_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
