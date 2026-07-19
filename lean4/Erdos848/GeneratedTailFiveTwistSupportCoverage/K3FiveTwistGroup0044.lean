import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0044 : List (List ℕ) :=
  [[13, 449],
     [13, 457],
     [13, 461],
     [13, 463],
     [13, 467],
     [13, 479],
     [13, 487],
     [13, 491],
     [13, 499],
     [13, 503],
     [13, 509],
     [13, 521],
     [13, 523],
     [13, 541],
     [13, 547],
     [13, 557]]

theorem k3FiveTwistGroup0044_passes :
    k3FiveTwistGroup0044.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0044_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
