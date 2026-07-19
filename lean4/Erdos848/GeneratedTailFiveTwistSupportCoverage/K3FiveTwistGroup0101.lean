import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0101 : List (List ℕ) :=
  [[47, 383],
     [47, 389],
     [47, 397],
     [47, 401],
     [47, 409],
     [47, 419],
     [47, 421],
     [47, 431],
     [47, 433],
     [47, 439],
     [47, 443],
     [47, 449],
     [47, 457],
     [53, 59],
     [53, 61],
     [53, 67]]

theorem k3FiveTwistGroup0101_passes :
    k3FiveTwistGroup0101.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0101_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
