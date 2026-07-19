import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0042 : List (List ℕ) :=
  [[3, 11, 19, 47],
     [3, 11, 19, 53],
     [3, 11, 19, 59],
     [3, 11, 19, 61],
     [3, 11, 19, 67],
     [3, 11, 19, 71],
     [3, 11, 19, 73],
     [3, 11, 19, 79]]

theorem prefixGroup0042_passes :
    prefixGroup0042.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
