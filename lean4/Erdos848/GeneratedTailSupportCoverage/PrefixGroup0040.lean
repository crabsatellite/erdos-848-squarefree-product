import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0040 : List (List ℕ) :=
  [[3, 11, 17, 79],
     [3, 11, 17, 83],
     [3, 11, 17, 89],
     [3, 11, 17, 97],
     [3, 11, 17, 101],
     [3, 11, 17, 103],
     [3, 11, 17, 107],
     [3, 11, 17, 109]]

theorem prefixGroup0040_passes :
    prefixGroup0040.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
