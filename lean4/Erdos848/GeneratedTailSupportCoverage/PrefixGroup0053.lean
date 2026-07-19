import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0053 : List (List ℕ) :=
  [[3, 11, 43, 59],
     [3, 11, 43, 61],
     [3, 11, 43, 67],
     [3, 11, 43, 71],
     [3, 11, 43, 73],
     [3, 11, 43, 79],
     [3, 11, 47, 53],
     [3, 11, 47, 59]]

theorem prefixGroup0053_passes :
    prefixGroup0053.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
