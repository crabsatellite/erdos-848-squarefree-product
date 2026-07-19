import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0110 : List (List ℕ) :=
  [[7, 17, 19, 53],
     [7, 17, 19, 59],
     [7, 17, 19, 61],
     [7, 17, 23, 29],
     [7, 17, 23, 31],
     [7, 17, 23, 37],
     [7, 17, 23, 41],
     [7, 17, 23, 43]]

theorem prefixGroup0110_passes :
    prefixGroup0110.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
