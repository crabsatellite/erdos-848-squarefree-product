import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k2PrefixGroup0014 : List (List ℕ) :=
  [[1433],
     [1439],
     [1447],
     [1451],
     [1453],
     [1459],
     [1471],
     [1481],
     [1483],
     [1487],
     [1489],
     [1493],
     [1499],
     [1511],
     [1523],
     [1531]]

theorem k2PrefixGroup0014_passes :
    k2PrefixGroup0014.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 522) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
