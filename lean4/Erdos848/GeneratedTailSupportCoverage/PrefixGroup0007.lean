import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0007 : List (List ℕ) :=
  [[3, 7, 13, 79],
     [3, 7, 13, 83],
     [3, 7, 13, 89],
     [3, 7, 13, 97],
     [3, 7, 13, 101],
     [3, 7, 13, 103],
     [3, 7, 13, 107],
     [3, 7, 13, 109]]

theorem prefixGroup0007_passes :
    prefixGroup0007.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
