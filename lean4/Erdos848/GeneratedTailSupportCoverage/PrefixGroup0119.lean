import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0119 : List (List ℕ) :=
  [[11, 13, 23, 47],
     [11, 13, 29, 31],
     [11, 13, 29, 37],
     [11, 13, 29, 41],
     [11, 13, 29, 43],
     [11, 13, 31, 37],
     [11, 13, 31, 41],
     [11, 13, 31, 43]]

theorem prefixGroup0119_passes :
    prefixGroup0119.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
