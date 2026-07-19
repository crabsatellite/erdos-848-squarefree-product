import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0103 : List (List ℕ) :=
  [[7, 13, 17, 43],
     [7, 13, 17, 47],
     [7, 13, 17, 53],
     [7, 13, 17, 59],
     [7, 13, 17, 61],
     [7, 13, 17, 67],
     [7, 13, 17, 71],
     [7, 13, 17, 73]]

theorem prefixGroup0103_passes :
    prefixGroup0103.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
