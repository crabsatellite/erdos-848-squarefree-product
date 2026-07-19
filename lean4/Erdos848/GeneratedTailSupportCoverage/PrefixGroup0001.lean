import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0001 : List (List ℕ) :=
  [[3, 7, 11, 43],
     [3, 7, 11, 47],
     [3, 7, 11, 53],
     [3, 7, 11, 59],
     [3, 7, 11, 61],
     [3, 7, 11, 67],
     [3, 7, 11, 71],
     [3, 7, 11, 73]]

theorem prefixGroup0001_passes :
    prefixGroup0001.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
