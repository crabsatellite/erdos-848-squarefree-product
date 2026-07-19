import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0089 : List (List ℕ) :=
  [[3, 23, 41, 47],
     [3, 23, 41, 53],
     [3, 23, 43, 47],
     [3, 23, 43, 53],
     [3, 29, 31, 37],
     [3, 29, 31, 41],
     [3, 29, 31, 43],
     [3, 29, 31, 47]]

theorem prefixGroup0089_passes :
    prefixGroup0089.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
