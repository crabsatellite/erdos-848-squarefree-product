import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0068 : List (List ℕ) :=
  [[3, 13, 41, 59],
     [3, 13, 41, 61],
     [3, 13, 41, 67],
     [3, 13, 41, 71],
     [3, 13, 41, 73],
     [3, 13, 43, 47],
     [3, 13, 43, 53],
     [3, 13, 43, 59]]

theorem prefixGroup0068_passes :
    prefixGroup0068.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
