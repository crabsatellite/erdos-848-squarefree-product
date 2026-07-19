import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0095 : List (List ℕ) :=
  [[7, 11, 17, 43],
     [7, 11, 17, 47],
     [7, 11, 17, 53],
     [7, 11, 17, 59],
     [7, 11, 17, 61],
     [7, 11, 17, 67],
     [7, 11, 17, 71],
     [7, 11, 17, 73]]

theorem prefixGroup0095_passes :
    prefixGroup0095.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
