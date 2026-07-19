import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0072 : List (List ℕ) :=
  [[3, 17, 19, 71],
     [3, 17, 19, 73],
     [3, 17, 19, 79],
     [3, 17, 19, 83],
     [3, 17, 19, 89],
     [3, 17, 19, 97],
     [3, 17, 23, 29],
     [3, 17, 23, 31]]

theorem prefixGroup0072_passes :
    prefixGroup0072.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
