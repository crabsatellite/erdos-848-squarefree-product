import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0006 : List (List ℕ) :=
  [[3, 7, 13, 43],
     [3, 7, 13, 47],
     [3, 7, 13, 53],
     [3, 7, 13, 59],
     [3, 7, 13, 61],
     [3, 7, 13, 67],
     [3, 7, 13, 71],
     [3, 7, 13, 73]]

theorem prefixGroup0006_passes :
    prefixGroup0006.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
