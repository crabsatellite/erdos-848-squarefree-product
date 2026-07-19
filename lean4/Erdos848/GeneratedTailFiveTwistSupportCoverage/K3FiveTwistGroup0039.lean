import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0039 : List (List ℕ) :=
  [[13, 17],
     [13, 19],
     [13, 23],
     [13, 29],
     [13, 31],
     [13, 37],
     [13, 41],
     [13, 43],
     [13, 47],
     [13, 53],
     [13, 59],
     [13, 61],
     [13, 67],
     [13, 71],
     [13, 73],
     [13, 79]]

theorem k3FiveTwistGroup0039_passes :
    k3FiveTwistGroup0039.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0039_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
