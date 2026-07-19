import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0034 : List (List ℕ) :=
  [[3, 7, 67, 71],
     [3, 7, 67, 73],
     [3, 7, 67, 79],
     [3, 7, 71, 73],
     [3, 7, 71, 79],
     [3, 11, 13, 17],
     [3, 11, 13, 19],
     [3, 11, 13, 23]]

theorem prefixGroup0034_passes :
    prefixGroup0034.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
