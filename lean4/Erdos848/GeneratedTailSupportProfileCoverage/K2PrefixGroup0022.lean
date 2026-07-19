import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k2PrefixGroup0022 : List (List ℕ) :=
  [[2389],
     [2393],
     [2399],
     [2411],
     [2417],
     [2423],
     [2437],
     [2441],
     [2447],
     [2459],
     [2467],
     [2473],
     [2477],
     [2503],
     [2521],
     [2531]]

theorem k2PrefixGroup0022_passes :
    k2PrefixGroup0022.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 522) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
