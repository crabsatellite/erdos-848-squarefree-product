import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0108 : List (List ℕ) :=
  [[7, 13, 31, 43],
     [7, 13, 31, 47],
     [7, 13, 31, 53],
     [7, 13, 37, 41],
     [7, 13, 37, 43],
     [7, 13, 37, 47],
     [7, 13, 41, 43],
     [7, 13, 41, 47]]

theorem prefixGroup0108_passes :
    prefixGroup0108.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
