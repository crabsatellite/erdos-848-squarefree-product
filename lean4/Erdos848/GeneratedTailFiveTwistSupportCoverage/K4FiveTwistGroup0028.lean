import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0028 : List (List ℕ) :=
  [[3, 19, 373],
     [3, 19, 379],
     [3, 19, 383],
     [3, 19, 389],
     [3, 19, 397],
     [3, 19, 401],
     [3, 19, 409],
     [3, 23, 29],
     [3, 23, 31],
     [3, 23, 37],
     [3, 23, 41],
     [3, 23, 43],
     [3, 23, 47],
     [3, 23, 53],
     [3, 23, 59],
     [3, 23, 61]]

theorem k4FiveTwistGroup0028_passes :
    k4FiveTwistGroup0028.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0028_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
