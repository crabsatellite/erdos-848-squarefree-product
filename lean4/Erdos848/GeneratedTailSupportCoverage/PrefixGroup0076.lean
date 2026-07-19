import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0076 : List (List ℕ) :=
  [[3, 17, 31, 37],
     [3, 17, 31, 41],
     [3, 17, 31, 43],
     [3, 17, 31, 47],
     [3, 17, 31, 53],
     [3, 17, 31, 59],
     [3, 17, 31, 61],
     [3, 17, 31, 67]]

theorem prefixGroup0076_passes :
    prefixGroup0076.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
