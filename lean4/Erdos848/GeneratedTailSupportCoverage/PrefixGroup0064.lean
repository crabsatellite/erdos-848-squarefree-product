import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0064 : List (List ℕ) :=
  [[3, 13, 29, 61],
     [3, 13, 29, 67],
     [3, 13, 29, 71],
     [3, 13, 29, 73],
     [3, 13, 29, 79],
     [3, 13, 29, 83],
     [3, 13, 29, 89],
     [3, 13, 31, 37]]

theorem prefixGroup0064_passes :
    prefixGroup0064.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
