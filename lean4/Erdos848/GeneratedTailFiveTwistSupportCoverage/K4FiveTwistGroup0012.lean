import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0012 : List (List ℕ) :=
  [[3, 11, 397],
     [3, 11, 401],
     [3, 11, 409],
     [3, 11, 419],
     [3, 11, 421],
     [3, 11, 431],
     [3, 11, 433],
     [3, 11, 439],
     [3, 11, 443],
     [3, 11, 449],
     [3, 11, 457],
     [3, 11, 461],
     [3, 11, 463],
     [3, 11, 467],
     [3, 11, 479],
     [3, 11, 487]]

theorem k4FiveTwistGroup0012_passes :
    k4FiveTwistGroup0012.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0012_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
