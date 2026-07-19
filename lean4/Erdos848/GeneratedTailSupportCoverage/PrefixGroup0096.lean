import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0096 : List (List ℕ) :=
  [[7, 11, 17, 79],
     [7, 11, 17, 83],
     [7, 11, 19, 23],
     [7, 11, 19, 29],
     [7, 11, 19, 31],
     [7, 11, 19, 37],
     [7, 11, 19, 41],
     [7, 11, 19, 43]]

theorem prefixGroup0096_passes :
    prefixGroup0096.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
