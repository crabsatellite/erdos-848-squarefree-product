import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0099 : List (List ℕ) :=
  [[7, 11, 23, 61],
     [7, 11, 23, 67],
     [7, 11, 23, 71],
     [7, 11, 29, 31],
     [7, 11, 29, 37],
     [7, 11, 29, 41],
     [7, 11, 29, 43],
     [7, 11, 29, 47]]

theorem prefixGroup0099_passes :
    prefixGroup0099.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
