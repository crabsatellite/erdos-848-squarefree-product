import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0070 : List (List ℕ) :=
  [[3, 13, 47, 71],
     [3, 13, 53, 59],
     [3, 13, 53, 61],
     [3, 13, 53, 67],
     [3, 13, 59, 61],
     [3, 17, 19, 23],
     [3, 17, 19, 29],
     [3, 17, 19, 31]]

theorem prefixGroup0070_passes :
    prefixGroup0070.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
