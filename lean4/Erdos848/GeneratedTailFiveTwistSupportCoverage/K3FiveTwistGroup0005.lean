import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0005 : List (List ℕ) :=
  [[3, 433],
     [3, 439],
     [3, 443],
     [3, 449],
     [3, 457],
     [3, 461],
     [3, 463],
     [3, 467],
     [3, 479],
     [3, 487],
     [3, 491],
     [3, 499],
     [3, 503],
     [3, 509],
     [3, 521],
     [3, 523]]

theorem k3FiveTwistGroup0005_passes :
    k3FiveTwistGroup0005.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0005_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
