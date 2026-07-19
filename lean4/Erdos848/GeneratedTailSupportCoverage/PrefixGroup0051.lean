import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0051 : List (List ℕ) :=
  [[3, 11, 37, 71],
     [3, 11, 37, 73],
     [3, 11, 37, 79],
     [3, 11, 37, 83],
     [3, 11, 41, 43],
     [3, 11, 41, 47],
     [3, 11, 41, 53],
     [3, 11, 41, 59]]

theorem prefixGroup0051_passes :
    prefixGroup0051.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
