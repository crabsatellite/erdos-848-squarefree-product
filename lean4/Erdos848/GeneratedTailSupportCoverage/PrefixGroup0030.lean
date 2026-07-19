import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0030 : List (List ℕ) :=
  [[3, 7, 43, 97],
     [3, 7, 43, 101],
     [3, 7, 43, 103],
     [3, 7, 47, 53],
     [3, 7, 47, 59],
     [3, 7, 47, 61],
     [3, 7, 47, 67],
     [3, 7, 47, 71]]

theorem prefixGroup0030_passes :
    prefixGroup0030.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
