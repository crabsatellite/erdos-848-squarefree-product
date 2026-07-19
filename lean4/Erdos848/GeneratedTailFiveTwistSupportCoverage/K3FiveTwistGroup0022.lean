import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0022 : List (List ℕ) :=
  [[7, 409],
     [7, 419],
     [7, 421],
     [7, 431],
     [7, 433],
     [7, 439],
     [7, 443],
     [7, 449],
     [7, 457],
     [7, 461],
     [7, 463],
     [7, 467],
     [7, 479],
     [7, 487],
     [7, 491],
     [7, 499]]

theorem k3FiveTwistGroup0022_passes :
    k3FiveTwistGroup0022.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0022_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
