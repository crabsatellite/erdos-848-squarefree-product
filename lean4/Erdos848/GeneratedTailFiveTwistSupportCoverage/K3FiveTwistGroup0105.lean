import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0105 : List (List ℕ) :=
  [[53, 337],
     [53, 347],
     [53, 349],
     [53, 353],
     [53, 359],
     [53, 367],
     [53, 373],
     [53, 379],
     [53, 383],
     [53, 389],
     [53, 397],
     [53, 401],
     [53, 409],
     [53, 419],
     [53, 421],
     [53, 431]]

theorem k3FiveTwistGroup0105_passes :
    k3FiveTwistGroup0105.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0105_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
