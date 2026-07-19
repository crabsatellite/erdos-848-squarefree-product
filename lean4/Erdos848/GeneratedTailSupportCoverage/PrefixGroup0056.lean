import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0056 : List (List ℕ) :=
  [[3, 13, 17, 41],
     [3, 13, 17, 43],
     [3, 13, 17, 47],
     [3, 13, 17, 53],
     [3, 13, 17, 59],
     [3, 13, 17, 61],
     [3, 13, 17, 67],
     [3, 13, 17, 71]]

theorem prefixGroup0056_passes :
    prefixGroup0056.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
