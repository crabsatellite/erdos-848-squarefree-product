import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0066 : List (List ℕ) :=
  [[3, 13, 31, 73],
     [3, 13, 31, 79],
     [3, 13, 31, 83],
     [3, 13, 37, 41],
     [3, 13, 37, 43],
     [3, 13, 37, 47],
     [3, 13, 37, 53],
     [3, 13, 37, 59]]

theorem prefixGroup0066_passes :
    prefixGroup0066.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
