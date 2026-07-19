import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0112 : List (List ℕ) :=
  [[7, 17, 31, 37],
     [7, 17, 31, 41],
     [7, 17, 31, 43],
     [7, 17, 31, 47],
     [7, 17, 37, 41],
     [7, 17, 37, 43],
     [7, 17, 41, 43],
     [7, 19, 23, 29]]

theorem prefixGroup0112_passes :
    prefixGroup0112.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
