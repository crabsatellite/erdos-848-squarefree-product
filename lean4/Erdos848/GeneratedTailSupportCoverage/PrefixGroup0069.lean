import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0069 : List (List ℕ) :=
  [[3, 13, 43, 61],
     [3, 13, 43, 67],
     [3, 13, 43, 71],
     [3, 13, 43, 73],
     [3, 13, 47, 53],
     [3, 13, 47, 59],
     [3, 13, 47, 61],
     [3, 13, 47, 67]]

theorem prefixGroup0069_passes :
    prefixGroup0069.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
