import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0063 : List (List ℕ) :=
  [[3, 13, 23, 103],
     [3, 13, 29, 31],
     [3, 13, 29, 37],
     [3, 13, 29, 41],
     [3, 13, 29, 43],
     [3, 13, 29, 47],
     [3, 13, 29, 53],
     [3, 13, 29, 59]]

theorem prefixGroup0063_passes :
    prefixGroup0063.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
