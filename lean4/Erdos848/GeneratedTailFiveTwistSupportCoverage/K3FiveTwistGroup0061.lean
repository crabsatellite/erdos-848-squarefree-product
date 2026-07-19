import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0061 : List (List ℕ) :=
  [[19, 461],
     [19, 463],
     [19, 467],
     [19, 479],
     [19, 487],
     [19, 491],
     [19, 499],
     [19, 503],
     [19, 509],
     [19, 521],
     [19, 523],
     [19, 541],
     [19, 547],
     [19, 557],
     [19, 563],
     [19, 569]]

theorem k3FiveTwistGroup0061_passes :
    k3FiveTwistGroup0061.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0061_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
