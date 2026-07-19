import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0033 : List (List ℕ) :=
  [[3, 7, 59, 73],
     [3, 7, 59, 79],
     [3, 7, 59, 83],
     [3, 7, 61, 67],
     [3, 7, 61, 71],
     [3, 7, 61, 73],
     [3, 7, 61, 79],
     [3, 7, 61, 83]]

theorem prefixGroup0033_passes :
    prefixGroup0033.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
