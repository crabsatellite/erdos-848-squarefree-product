import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0000 : List (List ℕ) :=
  [[3, 7],
     [3, 11],
     [3, 13],
     [3, 17],
     [3, 19],
     [3, 23],
     [3, 29],
     [3, 31],
     [3, 37],
     [3, 41],
     [3, 43],
     [3, 47],
     [3, 53],
     [3, 59],
     [3, 61],
     [3, 67]]

theorem k3FiveTwistGroup0000_passes :
    k3FiveTwistGroup0000.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0000_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
