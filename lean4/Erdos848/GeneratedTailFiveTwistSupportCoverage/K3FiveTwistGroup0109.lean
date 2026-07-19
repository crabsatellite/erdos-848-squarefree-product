import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0109 : List (List ℕ) :=
  [[59, 317],
     [59, 331],
     [59, 337],
     [59, 347],
     [59, 349],
     [59, 353],
     [59, 359],
     [59, 367],
     [59, 373],
     [59, 379],
     [59, 383],
     [59, 389],
     [59, 397],
     [59, 401],
     [61, 67],
     [61, 71]]

theorem k3FiveTwistGroup0109_passes :
    k3FiveTwistGroup0109.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0109_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
