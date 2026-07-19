import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0080 : List (List ℕ) :=
  [[31, 349],
     [31, 353],
     [31, 359],
     [31, 367],
     [31, 373],
     [31, 379],
     [31, 383],
     [31, 389],
     [31, 397],
     [31, 401],
     [31, 409],
     [31, 419],
     [31, 421],
     [31, 431],
     [31, 433],
     [31, 439]]

theorem k3FiveTwistGroup0080_passes :
    k3FiveTwistGroup0080.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0080_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
