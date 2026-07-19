import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0092 : List (List ℕ) :=
  [[41, 449],
     [41, 457],
     [41, 461],
     [41, 463],
     [41, 467],
     [41, 479],
     [41, 487],
     [43, 47],
     [43, 53],
     [43, 59],
     [43, 61],
     [43, 67],
     [43, 71],
     [43, 73],
     [43, 79],
     [43, 83]]

theorem k3FiveTwistGroup0092_passes :
    k3FiveTwistGroup0092.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0092_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
