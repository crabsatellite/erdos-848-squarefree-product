import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0086 : List (List ℕ) :=
  [[37, 379],
     [37, 383],
     [37, 389],
     [37, 397],
     [37, 401],
     [37, 409],
     [37, 419],
     [37, 421],
     [37, 431],
     [37, 433],
     [37, 439],
     [37, 443],
     [37, 449],
     [37, 457],
     [37, 461],
     [37, 463]]

theorem k3FiveTwistGroup0086_passes :
    k3FiveTwistGroup0086.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0086_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
