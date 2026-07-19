import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0074 : List (List ℕ) :=
  [[3, 17, 23, 71],
     [3, 17, 23, 73],
     [3, 17, 23, 79],
     [3, 17, 23, 83],
     [3, 17, 29, 31],
     [3, 17, 29, 37],
     [3, 17, 29, 41],
     [3, 17, 29, 43]]

theorem prefixGroup0074_passes :
    prefixGroup0074.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
