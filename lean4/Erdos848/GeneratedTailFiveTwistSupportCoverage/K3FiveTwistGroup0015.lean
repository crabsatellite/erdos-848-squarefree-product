import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0015 : List (List ℕ) :=
  [[3, 1549],
     [3, 1553],
     [3, 1559],
     [3, 1567],
     [3, 1571],
     [3, 1579],
     [3, 1583],
     [3, 1597],
     [3, 1601],
     [3, 1607],
     [3, 1609],
     [3, 1613],
     [3, 1619],
     [3, 1621],
     [3, 1627],
     [3, 1637]]

theorem k3FiveTwistGroup0015_passes :
    k3FiveTwistGroup0015.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0015_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
