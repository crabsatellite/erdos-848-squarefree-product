import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0054 : List (List ℕ) :=
  [[3, 11, 47, 61],
     [3, 11, 47, 67],
     [3, 11, 47, 71],
     [3, 11, 47, 73],
     [3, 11, 53, 59],
     [3, 11, 53, 61],
     [3, 11, 53, 67],
     [3, 11, 53, 71]]

theorem prefixGroup0054_passes :
    prefixGroup0054.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
