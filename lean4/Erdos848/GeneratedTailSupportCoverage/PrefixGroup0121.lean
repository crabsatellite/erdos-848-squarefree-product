import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0121 : List (List ℕ) :=
  [[11, 17, 23, 29],
     [11, 17, 23, 31],
     [11, 17, 23, 37],
     [11, 17, 23, 41],
     [11, 17, 23, 43],
     [11, 17, 29, 31],
     [11, 17, 29, 37],
     [11, 17, 29, 41]]

theorem prefixGroup0121_passes :
    prefixGroup0121.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
