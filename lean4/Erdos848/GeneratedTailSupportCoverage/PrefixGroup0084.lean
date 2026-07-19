import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0084 : List (List ℕ) :=
  [[3, 19, 31, 67],
     [3, 19, 31, 71],
     [3, 19, 37, 41],
     [3, 19, 37, 43],
     [3, 19, 37, 47],
     [3, 19, 37, 53],
     [3, 19, 37, 59],
     [3, 19, 37, 61]]

theorem prefixGroup0084_passes :
    prefixGroup0084.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
