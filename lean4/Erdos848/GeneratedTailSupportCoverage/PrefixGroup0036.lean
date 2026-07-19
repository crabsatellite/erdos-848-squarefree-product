import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0036 : List (List ℕ) :=
  [[3, 11, 13, 61],
     [3, 11, 13, 67],
     [3, 11, 13, 71],
     [3, 11, 13, 73],
     [3, 11, 13, 79],
     [3, 11, 13, 83],
     [3, 11, 13, 89],
     [3, 11, 13, 97]]

theorem prefixGroup0036_passes :
    prefixGroup0036.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
