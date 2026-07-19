import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0024 : List (List ℕ) :=
  [[3, 7, 31, 89],
     [3, 7, 31, 97],
     [3, 7, 31, 101],
     [3, 7, 31, 103],
     [3, 7, 31, 107],
     [3, 7, 31, 109],
     [3, 7, 31, 113],
     [3, 7, 37, 41]]

theorem prefixGroup0024_passes :
    prefixGroup0024.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
