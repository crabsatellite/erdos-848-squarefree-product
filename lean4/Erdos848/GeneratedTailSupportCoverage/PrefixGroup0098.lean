import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0098 : List (List ℕ) :=
  [[7, 11, 23, 29],
     [7, 11, 23, 31],
     [7, 11, 23, 37],
     [7, 11, 23, 41],
     [7, 11, 23, 43],
     [7, 11, 23, 47],
     [7, 11, 23, 53],
     [7, 11, 23, 59]]

theorem prefixGroup0098_passes :
    prefixGroup0098.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
