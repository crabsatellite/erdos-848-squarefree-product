import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0048 : List (List ℕ) :=
  [[3, 11, 29, 83],
     [3, 11, 29, 89],
     [3, 11, 29, 97],
     [3, 11, 29, 101],
     [3, 11, 31, 37],
     [3, 11, 31, 41],
     [3, 11, 31, 43],
     [3, 11, 31, 47]]

theorem prefixGroup0048_passes :
    prefixGroup0048.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
