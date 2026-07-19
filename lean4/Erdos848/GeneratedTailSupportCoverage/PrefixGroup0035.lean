import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0035 : List (List ℕ) :=
  [[3, 11, 13, 29],
     [3, 11, 13, 31],
     [3, 11, 13, 37],
     [3, 11, 13, 41],
     [3, 11, 13, 43],
     [3, 11, 13, 47],
     [3, 11, 13, 53],
     [3, 11, 13, 59]]

theorem prefixGroup0035_passes :
    prefixGroup0035.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
