import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0082 : List (List ℕ) :=
  [[3, 19, 29, 41],
     [3, 19, 29, 43],
     [3, 19, 29, 47],
     [3, 19, 29, 53],
     [3, 19, 29, 59],
     [3, 19, 29, 61],
     [3, 19, 29, 67],
     [3, 19, 29, 71]]

theorem prefixGroup0082_passes :
    prefixGroup0082.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
