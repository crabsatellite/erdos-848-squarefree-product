import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0011 : List (List ℕ) :=
  [[3, 7, 17, 67],
     [3, 7, 17, 71],
     [3, 7, 17, 73],
     [3, 7, 17, 79],
     [3, 7, 17, 83],
     [3, 7, 17, 89],
     [3, 7, 17, 97],
     [3, 7, 17, 101]]

theorem prefixGroup0011_passes :
    prefixGroup0011.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
