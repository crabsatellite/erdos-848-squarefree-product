import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0033 : List (List ℕ) :=
  [[11, 317],
     [11, 331],
     [11, 337],
     [11, 347],
     [11, 349],
     [11, 353],
     [11, 359],
     [11, 367],
     [11, 373],
     [11, 379],
     [11, 383],
     [11, 389],
     [11, 397],
     [11, 401],
     [11, 409],
     [11, 419]]

theorem k3FiveTwistGroup0033_passes :
    k3FiveTwistGroup0033.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0033_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
