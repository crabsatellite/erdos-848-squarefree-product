import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0069 : List (List ℕ) :=
  [[23, 521],
     [23, 523],
     [23, 541],
     [23, 547],
     [23, 557],
     [23, 563],
     [23, 569],
     [23, 571],
     [23, 577],
     [23, 587],
     [23, 593],
     [23, 599],
     [23, 601],
     [23, 607],
     [23, 613],
     [23, 617]]

theorem k3FiveTwistGroup0069_passes :
    k3FiveTwistGroup0069.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0069_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
