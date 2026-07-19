import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0079 : List (List ℕ) :=
  [[3, 17, 43, 47],
     [3, 17, 43, 53],
     [3, 17, 43, 59],
     [3, 17, 43, 61],
     [3, 17, 47, 53],
     [3, 17, 47, 59],
     [3, 17, 47, 61],
     [3, 17, 53, 59]]

theorem prefixGroup0079_passes :
    prefixGroup0079.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
