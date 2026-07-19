import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0109 : List (List ℕ) :=
  [[7, 13, 43, 47],
     [7, 17, 19, 23],
     [7, 17, 19, 29],
     [7, 17, 19, 31],
     [7, 17, 19, 37],
     [7, 17, 19, 41],
     [7, 17, 19, 43],
     [7, 17, 19, 47]]

theorem prefixGroup0109_passes :
    prefixGroup0109.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
