import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0091 : List (List ℕ) :=
  [[41, 353],
     [41, 359],
     [41, 367],
     [41, 373],
     [41, 379],
     [41, 383],
     [41, 389],
     [41, 397],
     [41, 401],
     [41, 409],
     [41, 419],
     [41, 421],
     [41, 431],
     [41, 433],
     [41, 439],
     [41, 443]]

theorem k3FiveTwistGroup0091_passes :
    k3FiveTwistGroup0091.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0091_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
