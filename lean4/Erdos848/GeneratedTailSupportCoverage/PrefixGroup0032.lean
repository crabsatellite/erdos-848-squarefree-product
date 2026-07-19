import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0032 : List (List ℕ) :=
  [[3, 7, 53, 71],
     [3, 7, 53, 73],
     [3, 7, 53, 79],
     [3, 7, 53, 83],
     [3, 7, 53, 89],
     [3, 7, 59, 61],
     [3, 7, 59, 67],
     [3, 7, 59, 71]]

theorem prefixGroup0032_passes :
    prefixGroup0032.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
