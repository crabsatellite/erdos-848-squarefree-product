import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0082 : List (List ℕ) :=
  [[31, 557],
     [31, 563],
     [37, 41],
     [37, 43],
     [37, 47],
     [37, 53],
     [37, 59],
     [37, 61],
     [37, 67],
     [37, 71],
     [37, 73],
     [37, 79],
     [37, 83],
     [37, 89],
     [37, 97],
     [37, 101]]

theorem k3FiveTwistGroup0082_passes :
    k3FiveTwistGroup0082.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0082_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
