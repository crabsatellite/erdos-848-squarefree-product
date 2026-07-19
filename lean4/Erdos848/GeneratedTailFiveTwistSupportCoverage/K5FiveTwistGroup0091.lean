import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0091 : List (List ℕ) :=
  [[3, 31, 37, 41],
     [3, 31, 37, 43],
     [3, 31, 37, 47],
     [3, 31, 41, 43],
     [3, 31, 41, 47],
     [3, 31, 43, 47],
     [3, 37, 41, 43],
     [7, 11, 13, 17]]

theorem k5FiveTwistGroup0091_passes :
    k5FiveTwistGroup0091.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0091_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
