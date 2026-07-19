import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0017 : List (List ℕ) :=
  [[3, 1783],
     [3, 1787],
     [3, 1789],
     [3, 1801],
     [3, 1811],
     [7, 11],
     [7, 13],
     [7, 17],
     [7, 19],
     [7, 23],
     [7, 29],
     [7, 31],
     [7, 37],
     [7, 41],
     [7, 43],
     [7, 47]]

theorem k3FiveTwistGroup0017_passes :
    k3FiveTwistGroup0017.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0017_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
