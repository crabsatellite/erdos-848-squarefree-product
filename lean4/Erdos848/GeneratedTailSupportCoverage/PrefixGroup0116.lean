import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0116 : List (List ℕ) :=
  [[11, 13, 17, 23],
     [11, 13, 17, 29],
     [11, 13, 17, 31],
     [11, 13, 17, 37],
     [11, 13, 17, 41],
     [11, 13, 17, 43],
     [11, 13, 17, 47],
     [11, 13, 17, 53]]

theorem prefixGroup0116_passes :
    prefixGroup0116.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
