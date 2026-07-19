import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0104 : List (List ℕ) :=
  [[7, 13, 19, 23],
     [7, 13, 19, 29],
     [7, 13, 19, 31],
     [7, 13, 19, 37],
     [7, 13, 19, 41],
     [7, 13, 19, 43],
     [7, 13, 19, 47],
     [7, 13, 19, 53]]

theorem prefixGroup0104_passes :
    prefixGroup0104.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
