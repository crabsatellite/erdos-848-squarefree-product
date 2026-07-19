import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0091 : List (List ℕ) :=
  [[3, 31, 37, 41],
     [3, 31, 37, 43],
     [3, 31, 37, 47],
     [3, 31, 41, 43],
     [3, 31, 41, 47],
     [3, 31, 43, 47],
     [3, 37, 41, 43],
     [7, 11, 13, 17]]

theorem prefixGroup0091_passes :
    prefixGroup0091.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
