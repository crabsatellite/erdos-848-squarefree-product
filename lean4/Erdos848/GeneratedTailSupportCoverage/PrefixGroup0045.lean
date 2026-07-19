import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0045 : List (List ℕ) :=
  [[3, 11, 23, 61],
     [3, 11, 23, 67],
     [3, 11, 23, 71],
     [3, 11, 23, 73],
     [3, 11, 23, 79],
     [3, 11, 23, 83],
     [3, 11, 23, 89],
     [3, 11, 23, 97]]

theorem prefixGroup0045_passes :
    prefixGroup0045.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
