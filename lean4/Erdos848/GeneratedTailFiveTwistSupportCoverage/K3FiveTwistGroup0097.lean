import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0097 : List (List ℕ) :=
  [[43, 457],
     [43, 461],
     [43, 463],
     [43, 467],
     [47, 53],
     [47, 59],
     [47, 61],
     [47, 67],
     [47, 71],
     [47, 73],
     [47, 79],
     [47, 83],
     [47, 89],
     [47, 97],
     [47, 101],
     [47, 103]]

theorem k3FiveTwistGroup0097_passes :
    k3FiveTwistGroup0097.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0097_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
