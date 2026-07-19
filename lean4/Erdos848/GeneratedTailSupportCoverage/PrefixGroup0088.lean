import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0088 : List (List ℕ) :=
  [[3, 23, 31, 59],
     [3, 23, 31, 61],
     [3, 23, 37, 41],
     [3, 23, 37, 43],
     [3, 23, 37, 47],
     [3, 23, 37, 53],
     [3, 23, 37, 59],
     [3, 23, 41, 43]]

theorem prefixGroup0088_passes :
    prefixGroup0088.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
