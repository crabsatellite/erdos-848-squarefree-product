import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0018 : List (List ℕ) :=
  [[3, 7, 23, 61],
     [3, 7, 23, 67],
     [3, 7, 23, 71],
     [3, 7, 23, 73],
     [3, 7, 23, 79],
     [3, 7, 23, 83],
     [3, 7, 23, 89],
     [3, 7, 23, 97]]

theorem prefixGroup0018_passes :
    prefixGroup0018.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
