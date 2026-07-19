import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0014 : List (List ℕ) :=
  [[3, 7, 19, 41],
     [3, 7, 19, 43],
     [3, 7, 19, 47],
     [3, 7, 19, 53],
     [3, 7, 19, 59],
     [3, 7, 19, 61],
     [3, 7, 19, 67],
     [3, 7, 19, 71]]

theorem prefixGroup0014_passes :
    prefixGroup0014.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
