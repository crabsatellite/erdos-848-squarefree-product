import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0044 : List (List ℕ) :=
  [[3, 11, 23, 29],
     [3, 11, 23, 31],
     [3, 11, 23, 37],
     [3, 11, 23, 41],
     [3, 11, 23, 43],
     [3, 11, 23, 47],
     [3, 11, 23, 53],
     [3, 11, 23, 59]]

theorem prefixGroup0044_passes :
    prefixGroup0044.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
