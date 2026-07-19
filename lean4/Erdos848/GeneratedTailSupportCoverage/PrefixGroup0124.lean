import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0124 : List (List ℕ) :=
  [[13, 17, 23, 29],
     [13, 17, 23, 31],
     [13, 17, 23, 37],
     [13, 17, 23, 41],
     [13, 17, 29, 31],
     [13, 17, 29, 37],
     [13, 19, 23, 29],
     [13, 19, 23, 31]]

theorem prefixGroup0124_passes :
    prefixGroup0124.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
