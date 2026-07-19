import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0058 : List (List ℕ) :=
  [[3, 13, 17, 109],
     [3, 13, 17, 113],
     [3, 13, 19, 23],
     [3, 13, 19, 29],
     [3, 13, 19, 31],
     [3, 13, 19, 37],
     [3, 13, 19, 41],
     [3, 13, 19, 43]]

theorem prefixGroup0058_passes :
    prefixGroup0058.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
