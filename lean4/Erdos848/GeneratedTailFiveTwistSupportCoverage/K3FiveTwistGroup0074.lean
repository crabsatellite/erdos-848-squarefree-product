import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0074 : List (List ℕ) :=
  [[29, 347],
     [29, 349],
     [29, 353],
     [29, 359],
     [29, 367],
     [29, 373],
     [29, 379],
     [29, 383],
     [29, 389],
     [29, 397],
     [29, 401],
     [29, 409],
     [29, 419],
     [29, 421],
     [29, 431],
     [29, 433]]

theorem k3FiveTwistGroup0074_passes :
    k3FiveTwistGroup0074.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0074_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
