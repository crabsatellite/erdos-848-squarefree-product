import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4FiveTwistGroup0018 : List (List ℕ) :=
  [[3, 13, 409],
     [3, 13, 419],
     [3, 13, 421],
     [3, 13, 431],
     [3, 13, 433],
     [3, 13, 439],
     [3, 13, 443],
     [3, 13, 449],
     [3, 13, 457],
     [3, 13, 461],
     [3, 13, 463],
     [3, 13, 467],
     [3, 13, 479],
     [3, 13, 487],
     [3, 13, 491],
     [3, 13, 499]]

theorem k4FiveTwistGroup0018_passes :
    k4FiveTwistGroup0018.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 143) = true := by
  decide

#print axioms k4FiveTwistGroup0018_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
