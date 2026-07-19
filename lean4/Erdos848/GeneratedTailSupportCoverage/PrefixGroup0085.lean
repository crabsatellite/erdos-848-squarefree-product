import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0085 : List (List ℕ) :=
  [[3, 19, 41, 43],
     [3, 19, 41, 47],
     [3, 19, 41, 53],
     [3, 19, 41, 59],
     [3, 19, 41, 61],
     [3, 19, 43, 47],
     [3, 19, 43, 53],
     [3, 19, 43, 59]]

theorem prefixGroup0085_passes :
    prefixGroup0085.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
