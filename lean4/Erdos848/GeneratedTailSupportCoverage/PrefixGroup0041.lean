import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0041 : List (List ℕ) :=
  [[3, 11, 17, 113],
     [3, 11, 17, 127],
     [3, 11, 19, 23],
     [3, 11, 19, 29],
     [3, 11, 19, 31],
     [3, 11, 19, 37],
     [3, 11, 19, 41],
     [3, 11, 19, 43]]

theorem prefixGroup0041_passes :
    prefixGroup0041.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
