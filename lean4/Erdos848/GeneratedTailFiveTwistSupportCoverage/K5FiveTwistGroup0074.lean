import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0074 : List (List ℕ) :=
  [[3, 17, 23, 71],
     [3, 17, 23, 73],
     [3, 17, 23, 79],
     [3, 17, 23, 83],
     [3, 17, 29, 31],
     [3, 17, 29, 37],
     [3, 17, 29, 41],
     [3, 17, 29, 43]]

theorem k5FiveTwistGroup0074_passes :
    k5FiveTwistGroup0074.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0074_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
