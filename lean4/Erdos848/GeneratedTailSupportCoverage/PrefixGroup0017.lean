import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0017 : List (List ℕ) :=
  [[3, 7, 23, 29],
     [3, 7, 23, 31],
     [3, 7, 23, 37],
     [3, 7, 23, 41],
     [3, 7, 23, 43],
     [3, 7, 23, 47],
     [3, 7, 23, 53],
     [3, 7, 23, 59]]

theorem prefixGroup0017_passes :
    prefixGroup0017.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
