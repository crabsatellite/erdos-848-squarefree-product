import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0114 : List (List ℕ) :=
  [[7, 19, 29, 41],
     [7, 19, 29, 43],
     [7, 19, 29, 47],
     [7, 19, 31, 37],
     [7, 19, 31, 41],
     [7, 19, 31, 43],
     [7, 19, 37, 41],
     [7, 19, 37, 43]]

theorem prefixGroup0114_passes :
    prefixGroup0114.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
