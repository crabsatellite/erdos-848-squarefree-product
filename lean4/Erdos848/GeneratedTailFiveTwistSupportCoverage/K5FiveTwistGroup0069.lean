import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0069 : List (List ℕ) :=
  [[3, 13, 43, 61],
     [3, 13, 43, 67],
     [3, 13, 43, 71],
     [3, 13, 43, 73],
     [3, 13, 47, 53],
     [3, 13, 47, 59],
     [3, 13, 47, 61],
     [3, 13, 47, 67]]

theorem k5FiveTwistGroup0069_passes :
    k5FiveTwistGroup0069.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0069_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
