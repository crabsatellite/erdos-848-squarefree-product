import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0052 : List (List ℕ) :=
  [[3, 11, 41, 61],
     [3, 11, 41, 67],
     [3, 11, 41, 71],
     [3, 11, 41, 73],
     [3, 11, 41, 79],
     [3, 11, 41, 83],
     [3, 11, 43, 47],
     [3, 11, 43, 53]]

theorem prefixGroup0052_passes :
    prefixGroup0052.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
