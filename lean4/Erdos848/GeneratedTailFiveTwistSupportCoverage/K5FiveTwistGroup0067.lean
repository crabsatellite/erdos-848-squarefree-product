import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5FiveTwistGroup0067 : List (List ℕ) :=
  [[3, 13, 37, 61],
     [3, 13, 37, 67],
     [3, 13, 37, 71],
     [3, 13, 37, 73],
     [3, 13, 37, 79],
     [3, 13, 41, 43],
     [3, 13, 41, 47],
     [3, 13, 41, 53]]

theorem k5FiveTwistGroup0067_passes :
    k5FiveTwistGroup0067.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 70) = true := by
  decide

#print axioms k5FiveTwistGroup0067_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
