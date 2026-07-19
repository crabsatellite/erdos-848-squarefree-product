import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k2PrefixGroup0015 : List (List ℕ) :=
  [[1543],
     [1549],
     [1553],
     [1559],
     [1567],
     [1571],
     [1579],
     [1583],
     [1597],
     [1601],
     [1607],
     [1609],
     [1613],
     [1619],
     [1621],
     [1627]]

theorem k2PrefixGroup0015_passes :
    k2PrefixGroup0015.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 522) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
