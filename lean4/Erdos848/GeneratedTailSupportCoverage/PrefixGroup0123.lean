import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0123 : List (List ℕ) :=
  [[11, 19, 31, 37],
     [11, 23, 29, 31],
     [13, 17, 19, 23],
     [13, 17, 19, 29],
     [13, 17, 19, 31],
     [13, 17, 19, 37],
     [13, 17, 19, 41],
     [13, 17, 19, 43]]

theorem prefixGroup0123_passes :
    prefixGroup0123.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
