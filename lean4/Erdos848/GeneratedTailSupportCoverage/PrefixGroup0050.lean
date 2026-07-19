import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0050 : List (List ℕ) :=
  [[3, 11, 31, 89],
     [3, 11, 37, 41],
     [3, 11, 37, 43],
     [3, 11, 37, 47],
     [3, 11, 37, 53],
     [3, 11, 37, 59],
     [3, 11, 37, 61],
     [3, 11, 37, 67]]

theorem prefixGroup0050_passes :
    prefixGroup0050.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
