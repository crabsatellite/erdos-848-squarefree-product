import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0066 : List (List ℕ) :=
  [[3, 13, 31, 73],
     [3, 13, 31, 79],
     [3, 13, 31, 83],
     [3, 13, 37, 41],
     [3, 13, 37, 43],
     [3, 13, 37, 47],
     [3, 13, 37, 53],
     [3, 13, 37, 59]]

theorem k5FiveTwistGroup0066_passes :
    k5FiveTwistGroup0066.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0066_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
