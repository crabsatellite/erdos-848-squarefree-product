import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0031 : List (List ℕ) :=
  [[3, 7, 47, 73],
     [3, 7, 47, 79],
     [3, 7, 47, 83],
     [3, 7, 47, 89],
     [3, 7, 47, 97],
     [3, 7, 53, 59],
     [3, 7, 53, 61],
     [3, 7, 53, 67]]

theorem prefixGroup0031_passes :
    prefixGroup0031.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
