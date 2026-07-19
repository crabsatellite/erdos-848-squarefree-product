import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0107 : List (List ℕ) :=
  [[7, 13, 29, 37],
     [7, 13, 29, 41],
     [7, 13, 29, 43],
     [7, 13, 29, 47],
     [7, 13, 29, 53],
     [7, 13, 29, 59],
     [7, 13, 31, 37],
     [7, 13, 31, 41]]

theorem prefixGroup0107_passes :
    prefixGroup0107.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
