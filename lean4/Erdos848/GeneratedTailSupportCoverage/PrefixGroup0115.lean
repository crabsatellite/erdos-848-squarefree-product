import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0115 : List (List ℕ) :=
  [[7, 23, 29, 31],
     [7, 23, 29, 37],
     [7, 23, 29, 41],
     [7, 23, 29, 43],
     [7, 23, 31, 37],
     [7, 23, 31, 41],
     [7, 29, 31, 37],
     [11, 13, 17, 19]]

theorem prefixGroup0115_passes :
    prefixGroup0115.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
