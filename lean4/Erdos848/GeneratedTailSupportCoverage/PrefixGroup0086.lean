import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0086 : List (List ℕ) :=
  [[3, 19, 47, 53],
     [3, 19, 47, 59],
     [3, 23, 29, 31],
     [3, 23, 29, 37],
     [3, 23, 29, 41],
     [3, 23, 29, 43],
     [3, 23, 29, 47],
     [3, 23, 29, 53]]

theorem prefixGroup0086_passes :
    prefixGroup0086.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
