import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0039 : List (List ℕ) :=
  [[3, 11, 17, 43],
     [3, 11, 17, 47],
     [3, 11, 17, 53],
     [3, 11, 17, 59],
     [3, 11, 17, 61],
     [3, 11, 17, 67],
     [3, 11, 17, 71],
     [3, 11, 17, 73]]

theorem k5FiveTwistGroup0039_passes :
    k5FiveTwistGroup0039.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0039_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
