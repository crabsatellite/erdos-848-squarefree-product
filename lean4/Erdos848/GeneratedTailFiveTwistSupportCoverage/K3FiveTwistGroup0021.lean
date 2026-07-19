import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0021 : List (List ℕ) :=
  [[7, 311],
     [7, 313],
     [7, 317],
     [7, 331],
     [7, 337],
     [7, 347],
     [7, 349],
     [7, 353],
     [7, 359],
     [7, 367],
     [7, 373],
     [7, 379],
     [7, 383],
     [7, 389],
     [7, 397],
     [7, 401]]

theorem k3FiveTwistGroup0021_passes :
    k3FiveTwistGroup0021.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0021_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
