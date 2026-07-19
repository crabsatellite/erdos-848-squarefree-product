import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0020 : List (List ℕ) :=
  [[3, 7, 29, 31],
     [3, 7, 29, 37],
     [3, 7, 29, 41],
     [3, 7, 29, 43],
     [3, 7, 29, 47],
     [3, 7, 29, 53],
     [3, 7, 29, 59],
     [3, 7, 29, 61]]

theorem prefixGroup0020_passes :
    prefixGroup0020.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
