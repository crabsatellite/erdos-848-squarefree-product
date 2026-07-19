import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0028 : List (List ℕ) :=
  [[3, 7, 41, 79],
     [3, 7, 41, 83],
     [3, 7, 41, 89],
     [3, 7, 41, 97],
     [3, 7, 41, 101],
     [3, 7, 41, 103],
     [3, 7, 43, 47],
     [3, 7, 43, 53]]

theorem prefixGroup0028_passes :
    prefixGroup0028.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
