import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0093 : List (List ℕ) :=
  [[7, 11, 13, 53],
     [7, 11, 13, 59],
     [7, 11, 13, 61],
     [7, 11, 13, 67],
     [7, 11, 13, 71],
     [7, 11, 13, 73],
     [7, 11, 13, 79],
     [7, 11, 13, 83]]

theorem prefixGroup0093_passes :
    prefixGroup0093.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
