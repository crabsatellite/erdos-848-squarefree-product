import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0010 : List (List ℕ) :=
  [[3, 7, 17, 31],
     [3, 7, 17, 37],
     [3, 7, 17, 41],
     [3, 7, 17, 43],
     [3, 7, 17, 47],
     [3, 7, 17, 53],
     [3, 7, 17, 59],
     [3, 7, 17, 61]]

theorem k5FiveTwistGroup0010_passes :
    k5FiveTwistGroup0010.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0010_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
