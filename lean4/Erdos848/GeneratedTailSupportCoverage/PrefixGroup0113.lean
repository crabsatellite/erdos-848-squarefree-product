import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0113 : List (List ℕ) :=
  [[7, 19, 23, 31],
     [7, 19, 23, 37],
     [7, 19, 23, 41],
     [7, 19, 23, 43],
     [7, 19, 23, 47],
     [7, 19, 23, 53],
     [7, 19, 29, 31],
     [7, 19, 29, 37]]

theorem prefixGroup0113_passes :
    prefixGroup0113.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
