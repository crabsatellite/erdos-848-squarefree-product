import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3FiveTwistGroup0016 : List (List ℕ) :=
  [[3, 1657],
     [3, 1663],
     [3, 1667],
     [3, 1669],
     [3, 1693],
     [3, 1697],
     [3, 1699],
     [3, 1709],
     [3, 1721],
     [3, 1723],
     [3, 1733],
     [3, 1741],
     [3, 1747],
     [3, 1753],
     [3, 1759],
     [3, 1777]]

theorem k3FiveTwistGroup0016_passes :
    k3FiveTwistGroup0016.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses 278) = true := by
  decide

#print axioms k3FiveTwistGroup0016_passes

end Erdos848.GeneratedTailFiveTwistSupportCoverage
