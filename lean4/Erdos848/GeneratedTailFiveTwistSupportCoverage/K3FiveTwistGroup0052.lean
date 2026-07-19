import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0052 : List (List ℕ) :=
  [[17, 359],
     [17, 367],
     [17, 373],
     [17, 379],
     [17, 383],
     [17, 389],
     [17, 397],
     [17, 401],
     [17, 409],
     [17, 419],
     [17, 421],
     [17, 431],
     [17, 433],
     [17, 439],
     [17, 443],
     [17, 449]]

theorem k3FiveTwistGroup0052_passes :
    k3FiveTwistGroup0052.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0052_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
