import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0111 : List (List ℕ) :=
  [[7, 17, 23, 47],
     [7, 17, 23, 53],
     [7, 17, 23, 59],
     [7, 17, 29, 31],
     [7, 17, 29, 37],
     [7, 17, 29, 41],
     [7, 17, 29, 43],
     [7, 17, 29, 47]]

theorem prefixGroup0111_passes :
    prefixGroup0111.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
