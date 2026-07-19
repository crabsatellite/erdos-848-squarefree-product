import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0025 : List (List ℕ) :=
  [[3, 7, 37, 43],
     [3, 7, 37, 47],
     [3, 7, 37, 53],
     [3, 7, 37, 59],
     [3, 7, 37, 61],
     [3, 7, 37, 67],
     [3, 7, 37, 71],
     [3, 7, 37, 73]]

theorem prefixGroup0025_passes :
    prefixGroup0025.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
