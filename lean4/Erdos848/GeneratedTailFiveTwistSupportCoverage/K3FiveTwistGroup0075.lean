import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0075 : List (List ℕ) :=
  [[29, 439],
     [29, 443],
     [29, 449],
     [29, 457],
     [29, 461],
     [29, 463],
     [29, 467],
     [29, 479],
     [29, 487],
     [29, 491],
     [29, 499],
     [29, 503],
     [29, 509],
     [29, 521],
     [29, 523],
     [29, 541]]

theorem k3FiveTwistGroup0075_passes :
    k3FiveTwistGroup0075.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0075_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
