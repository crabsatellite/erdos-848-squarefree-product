import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0027 : List (List ℕ) :=
  [[3, 7, 41, 43],
     [3, 7, 41, 47],
     [3, 7, 41, 53],
     [3, 7, 41, 59],
     [3, 7, 41, 61],
     [3, 7, 41, 67],
     [3, 7, 41, 71],
     [3, 7, 41, 73]]

theorem prefixGroup0027_passes :
    prefixGroup0027.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
