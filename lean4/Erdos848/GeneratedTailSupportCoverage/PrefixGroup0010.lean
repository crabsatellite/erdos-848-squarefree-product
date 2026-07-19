import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0010 : List (List ℕ) :=
  [[3, 7, 17, 31],
     [3, 7, 17, 37],
     [3, 7, 17, 41],
     [3, 7, 17, 43],
     [3, 7, 17, 47],
     [3, 7, 17, 53],
     [3, 7, 17, 59],
     [3, 7, 17, 61]]

theorem prefixGroup0010_passes :
    prefixGroup0010.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
