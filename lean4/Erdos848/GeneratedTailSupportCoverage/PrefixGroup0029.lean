import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0029 : List (List ℕ) :=
  [[3, 7, 43, 59],
     [3, 7, 43, 61],
     [3, 7, 43, 67],
     [3, 7, 43, 71],
     [3, 7, 43, 73],
     [3, 7, 43, 79],
     [3, 7, 43, 83],
     [3, 7, 43, 89]]

theorem prefixGroup0029_passes :
    prefixGroup0029.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
