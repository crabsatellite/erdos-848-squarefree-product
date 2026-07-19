import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k2PrefixGroup0013 : List (List ℕ) :=
  [[1297],
     [1301],
     [1303],
     [1307],
     [1319],
     [1321],
     [1327],
     [1361],
     [1367],
     [1373],
     [1381],
     [1399],
     [1409],
     [1423],
     [1427],
     [1429]]

theorem k2PrefixGroup0013_passes :
    k2PrefixGroup0013.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 522) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
