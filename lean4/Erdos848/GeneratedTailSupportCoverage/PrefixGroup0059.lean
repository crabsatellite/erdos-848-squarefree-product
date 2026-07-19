import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0059 : List (List ℕ) :=
  [[3, 13, 19, 47],
     [3, 13, 19, 53],
     [3, 13, 19, 59],
     [3, 13, 19, 61],
     [3, 13, 19, 67],
     [3, 13, 19, 71],
     [3, 13, 19, 73],
     [3, 13, 19, 79]]

theorem prefixGroup0059_passes :
    prefixGroup0059.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
