import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0061 : List (List ℕ) :=
  [[3, 13, 23, 31],
     [3, 13, 23, 37],
     [3, 13, 23, 41],
     [3, 13, 23, 43],
     [3, 13, 23, 47],
     [3, 13, 23, 53],
     [3, 13, 23, 59],
     [3, 13, 23, 61]]

theorem prefixGroup0061_passes :
    prefixGroup0061.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
