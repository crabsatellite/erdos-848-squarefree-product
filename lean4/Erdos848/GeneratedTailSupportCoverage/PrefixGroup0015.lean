import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0015 : List (List ℕ) :=
  [[3, 7, 19, 73],
     [3, 7, 19, 79],
     [3, 7, 19, 83],
     [3, 7, 19, 89],
     [3, 7, 19, 97],
     [3, 7, 19, 101],
     [3, 7, 19, 103],
     [3, 7, 19, 107]]

theorem prefixGroup0015_passes :
    prefixGroup0015.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
