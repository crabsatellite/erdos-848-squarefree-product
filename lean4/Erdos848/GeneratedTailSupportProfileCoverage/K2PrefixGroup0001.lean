import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k2PrefixGroup0001 : List (List ℕ) :=
  [[67],
     [71],
     [73],
     [79],
     [83],
     [89],
     [97],
     [101],
     [103],
     [107],
     [109],
     [113],
     [127],
     [131],
     [137],
     [139]]

theorem k2PrefixGroup0001_passes :
    k2PrefixGroup0001.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 522) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
