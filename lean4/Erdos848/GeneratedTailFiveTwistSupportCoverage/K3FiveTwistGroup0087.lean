import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0087 : List (List ℕ) :=
  [[37, 467],
     [37, 479],
     [37, 487],
     [37, 491],
     [37, 499],
     [37, 503],
     [37, 509],
     [41, 43],
     [41, 47],
     [41, 53],
     [41, 59],
     [41, 61],
     [41, 67],
     [41, 71],
     [41, 73],
     [41, 79]]

theorem k3FiveTwistGroup0087_passes :
    k3FiveTwistGroup0087.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0087_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
