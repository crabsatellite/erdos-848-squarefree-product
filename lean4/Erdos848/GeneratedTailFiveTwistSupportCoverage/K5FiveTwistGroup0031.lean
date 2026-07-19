import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0031 : List (List ℕ) :=
  [[3, 7, 47, 73],
     [3, 7, 47, 79],
     [3, 7, 47, 83],
     [3, 7, 47, 89],
     [3, 7, 47, 97],
     [3, 7, 53, 59],
     [3, 7, 53, 61],
     [3, 7, 53, 67]]

theorem k5FiveTwistGroup0031_passes :
    k5FiveTwistGroup0031.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0031_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
