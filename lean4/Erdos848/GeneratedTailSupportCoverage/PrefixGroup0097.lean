import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0097 : List (List ℕ) :=
  [[7, 11, 19, 47],
     [7, 11, 19, 53],
     [7, 11, 19, 59],
     [7, 11, 19, 61],
     [7, 11, 19, 67],
     [7, 11, 19, 71],
     [7, 11, 19, 73],
     [7, 11, 19, 79]]

theorem prefixGroup0097_passes :
    prefixGroup0097.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
