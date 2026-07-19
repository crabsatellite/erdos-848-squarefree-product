import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0067 : List (List ℕ) :=
  [[23, 317],
     [23, 331],
     [23, 337],
     [23, 347],
     [23, 349],
     [23, 353],
     [23, 359],
     [23, 367],
     [23, 373],
     [23, 379],
     [23, 383],
     [23, 389],
     [23, 397],
     [23, 401],
     [23, 409],
     [23, 419]]

theorem k3FiveTwistGroup0067_passes :
    k3FiveTwistGroup0067.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0067_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
