import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0106 : List (List ℕ) :=
  [[7, 13, 23, 41],
     [7, 13, 23, 43],
     [7, 13, 23, 47],
     [7, 13, 23, 53],
     [7, 13, 23, 59],
     [7, 13, 23, 61],
     [7, 13, 23, 67],
     [7, 13, 29, 31]]

theorem prefixGroup0106_passes :
    prefixGroup0106.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
