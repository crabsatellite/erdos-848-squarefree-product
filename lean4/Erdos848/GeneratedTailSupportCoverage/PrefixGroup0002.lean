import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0002 : List (List ℕ) :=
  [[3, 7, 11, 79],
     [3, 7, 11, 83],
     [3, 7, 11, 89],
     [3, 7, 11, 97],
     [3, 7, 11, 101],
     [3, 7, 11, 103],
     [3, 7, 11, 107],
     [3, 7, 11, 109]]

theorem prefixGroup0002_passes :
    prefixGroup0002.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
