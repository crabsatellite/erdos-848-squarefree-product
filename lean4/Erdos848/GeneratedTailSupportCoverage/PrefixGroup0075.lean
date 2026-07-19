import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0075 : List (List ℕ) :=
  [[3, 17, 29, 47],
     [3, 17, 29, 53],
     [3, 17, 29, 59],
     [3, 17, 29, 61],
     [3, 17, 29, 67],
     [3, 17, 29, 71],
     [3, 17, 29, 73],
     [3, 17, 29, 79]]

theorem prefixGroup0075_passes :
    prefixGroup0075.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
