import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k2PrefixGroup0016 : List (List ℕ) :=
  [[1637],
     [1657],
     [1663],
     [1667],
     [1669],
     [1693],
     [1697],
     [1699],
     [1709],
     [1721],
     [1723],
     [1733],
     [1741],
     [1747],
     [1753],
     [1759]]

theorem k2PrefixGroup0016_passes :
    k2PrefixGroup0016.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 522) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
