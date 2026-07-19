import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0016 : List (List ℕ) :=
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

theorem k3PrefixGroup0016_passes :
    k3PrefixGroup0016.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
