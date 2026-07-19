import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0117 : List (List ℕ) :=
  [[11, 13, 17, 59],
     [11, 13, 17, 61],
     [11, 13, 19, 23],
     [11, 13, 19, 29],
     [11, 13, 19, 31],
     [11, 13, 19, 37],
     [11, 13, 19, 41],
     [11, 13, 19, 43]]

theorem prefixGroup0117_passes :
    prefixGroup0117.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
