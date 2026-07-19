import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0015 : List (List ℕ) :=
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

theorem k3PrefixGroup0015_passes :
    k3PrefixGroup0015.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
