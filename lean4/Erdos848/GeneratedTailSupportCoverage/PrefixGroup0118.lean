import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0118 : List (List ℕ) :=
  [[11, 13, 19, 47],
     [11, 13, 19, 53],
     [11, 13, 19, 59],
     [11, 13, 23, 29],
     [11, 13, 23, 31],
     [11, 13, 23, 37],
     [11, 13, 23, 41],
     [11, 13, 23, 43]]

theorem prefixGroup0118_passes :
    prefixGroup0118.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
