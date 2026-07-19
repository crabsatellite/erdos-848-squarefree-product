import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0062 : List (List ℕ) :=
  [[3, 13, 23, 67],
     [3, 13, 23, 71],
     [3, 13, 23, 73],
     [3, 13, 23, 79],
     [3, 13, 23, 83],
     [3, 13, 23, 89],
     [3, 13, 23, 97],
     [3, 13, 23, 101]]

theorem prefixGroup0062_passes :
    prefixGroup0062.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
