import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0125 : List (List ℕ) :=
  [[13, 19, 23, 37],
     [13, 19, 29, 31],
     [13, 23, 29, 31],
     [17, 19, 23, 29],
     [17, 19, 23, 31]]

theorem prefixGroup0125_passes :
    prefixGroup0125.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
