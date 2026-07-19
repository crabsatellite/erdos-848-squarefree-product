import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0081 : List (List ℕ) :=
  [[31, 443],
     [31, 449],
     [31, 457],
     [31, 461],
     [31, 463],
     [31, 467],
     [31, 479],
     [31, 487],
     [31, 491],
     [31, 499],
     [31, 503],
     [31, 509],
     [31, 521],
     [31, 523],
     [31, 541],
     [31, 547]]

theorem k3FiveTwistGroup0081_passes :
    k3FiveTwistGroup0081.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0081_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
