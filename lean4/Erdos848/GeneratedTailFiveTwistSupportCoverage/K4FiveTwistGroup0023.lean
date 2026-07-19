import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0023 : List (List ℕ) :=
  [[3, 17, 353],
     [3, 17, 359],
     [3, 17, 367],
     [3, 17, 373],
     [3, 17, 379],
     [3, 17, 383],
     [3, 17, 389],
     [3, 17, 397],
     [3, 17, 401],
     [3, 17, 409],
     [3, 17, 419],
     [3, 17, 421],
     [3, 17, 431],
     [3, 17, 433],
     [3, 17, 439],
     [3, 19, 23]]

theorem k4FiveTwistGroup0023_passes :
    k4FiveTwistGroup0023.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0023_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
