import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0020 : List (List ℕ) :=
  [[3, 7, 29, 31],
     [3, 7, 29, 37],
     [3, 7, 29, 41],
     [3, 7, 29, 43],
     [3, 7, 29, 47],
     [3, 7, 29, 53],
     [3, 7, 29, 59],
     [3, 7, 29, 61]]

theorem k5FiveTwistGroup0020_passes :
    k5FiveTwistGroup0020.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0020_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
