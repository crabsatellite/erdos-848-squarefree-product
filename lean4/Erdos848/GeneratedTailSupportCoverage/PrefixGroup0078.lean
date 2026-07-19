import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0078 : List (List ℕ) :=
  [[3, 17, 37, 67],
     [3, 17, 37, 71],
     [3, 17, 41, 43],
     [3, 17, 41, 47],
     [3, 17, 41, 53],
     [3, 17, 41, 59],
     [3, 17, 41, 61],
     [3, 17, 41, 67]]

theorem prefixGroup0078_passes :
    prefixGroup0078.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
