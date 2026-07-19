import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0094 : List (List ℕ) :=
  [[7, 11, 13, 89],
     [7, 11, 13, 97],
     [7, 11, 17, 19],
     [7, 11, 17, 23],
     [7, 11, 17, 29],
     [7, 11, 17, 31],
     [7, 11, 17, 37],
     [7, 11, 17, 41]]

theorem prefixGroup0094_passes :
    prefixGroup0094.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
