import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0023 : List (List ℕ) :=
  [[3, 7, 31, 53],
     [3, 7, 31, 59],
     [3, 7, 31, 61],
     [3, 7, 31, 67],
     [3, 7, 31, 71],
     [3, 7, 31, 73],
     [3, 7, 31, 79],
     [3, 7, 31, 83]]

theorem prefixGroup0023_passes :
    prefixGroup0023.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
