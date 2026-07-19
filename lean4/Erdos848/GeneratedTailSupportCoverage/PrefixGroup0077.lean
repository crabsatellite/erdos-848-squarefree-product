import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0077 : List (List ℕ) :=
  [[3, 17, 31, 71],
     [3, 17, 31, 73],
     [3, 17, 37, 41],
     [3, 17, 37, 43],
     [3, 17, 37, 47],
     [3, 17, 37, 53],
     [3, 17, 37, 59],
     [3, 17, 37, 61]]

theorem prefixGroup0077_passes :
    prefixGroup0077.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
