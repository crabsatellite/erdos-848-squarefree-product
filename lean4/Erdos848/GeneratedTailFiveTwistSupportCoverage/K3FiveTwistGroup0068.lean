import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0068 : List (List ℕ) :=
  [[23, 421],
     [23, 431],
     [23, 433],
     [23, 439],
     [23, 443],
     [23, 449],
     [23, 457],
     [23, 461],
     [23, 463],
     [23, 467],
     [23, 479],
     [23, 487],
     [23, 491],
     [23, 499],
     [23, 503],
     [23, 509]]

theorem k3FiveTwistGroup0068_passes :
    k3FiveTwistGroup0068.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0068_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
