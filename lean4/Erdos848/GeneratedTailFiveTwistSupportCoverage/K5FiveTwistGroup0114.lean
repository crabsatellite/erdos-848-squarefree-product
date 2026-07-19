import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0114 : List (List ℕ) :=
  [[7, 19, 29, 41],
     [7, 19, 29, 43],
     [7, 19, 29, 47],
     [7, 19, 31, 37],
     [7, 19, 31, 41],
     [7, 19, 31, 43],
     [7, 19, 37, 41],
     [7, 19, 37, 43]]

theorem k5FiveTwistGroup0114_passes :
    k5FiveTwistGroup0114.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0114_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
