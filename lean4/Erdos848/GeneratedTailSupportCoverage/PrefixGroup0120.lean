import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0120 : List (List ℕ) :=
  [[11, 13, 37, 41],
     [11, 17, 19, 23],
     [11, 17, 19, 29],
     [11, 17, 19, 31],
     [11, 17, 19, 37],
     [11, 17, 19, 41],
     [11, 17, 19, 43],
     [11, 17, 19, 47]]

theorem prefixGroup0120_passes :
    prefixGroup0120.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
