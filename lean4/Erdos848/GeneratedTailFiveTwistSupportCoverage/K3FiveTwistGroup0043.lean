import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0043 : List (List ℕ) :=
  [[13, 353],
     [13, 359],
     [13, 367],
     [13, 373],
     [13, 379],
     [13, 383],
     [13, 389],
     [13, 397],
     [13, 401],
     [13, 409],
     [13, 419],
     [13, 421],
     [13, 431],
     [13, 433],
     [13, 439],
     [13, 443]]

theorem k3FiveTwistGroup0043_passes :
    k3FiveTwistGroup0043.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0043_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
