import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0073 : List (List ℕ) :=
  [[3, 17, 23, 37],
     [3, 17, 23, 41],
     [3, 17, 23, 43],
     [3, 17, 23, 47],
     [3, 17, 23, 53],
     [3, 17, 23, 59],
     [3, 17, 23, 61],
     [3, 17, 23, 67]]

theorem prefixGroup0073_passes :
    prefixGroup0073.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
