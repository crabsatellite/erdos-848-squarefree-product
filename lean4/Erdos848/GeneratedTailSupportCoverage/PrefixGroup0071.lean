import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0071 : List (List ℕ) :=
  [[3, 17, 19, 37],
     [3, 17, 19, 41],
     [3, 17, 19, 43],
     [3, 17, 19, 47],
     [3, 17, 19, 53],
     [3, 17, 19, 59],
     [3, 17, 19, 61],
     [3, 17, 19, 67]]

theorem prefixGroup0071_passes :
    prefixGroup0071.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
