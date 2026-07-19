import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0021 : List (List ℕ) :=
  [[3, 7, 29, 67],
     [3, 7, 29, 71],
     [3, 7, 29, 73],
     [3, 7, 29, 79],
     [3, 7, 29, 83],
     [3, 7, 29, 89],
     [3, 7, 29, 97],
     [3, 7, 29, 101]]

theorem prefixGroup0021_passes :
    prefixGroup0021.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
