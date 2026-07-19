import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0034 : List (List ℕ) :=
  [[11, 421],
     [11, 431],
     [11, 433],
     [11, 439],
     [11, 443],
     [11, 449],
     [11, 457],
     [11, 461],
     [11, 463],
     [11, 467],
     [11, 479],
     [11, 487],
     [11, 491],
     [11, 499],
     [11, 503],
     [11, 509]]

theorem k3FiveTwistGroup0034_passes :
    k3FiveTwistGroup0034.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0034_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
