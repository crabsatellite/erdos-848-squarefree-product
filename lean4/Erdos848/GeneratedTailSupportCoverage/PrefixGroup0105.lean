import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0105 : List (List ℕ) :=
  [[7, 13, 19, 59],
     [7, 13, 19, 61],
     [7, 13, 19, 67],
     [7, 13, 19, 71],
     [7, 13, 19, 73],
     [7, 13, 23, 29],
     [7, 13, 23, 31],
     [7, 13, 23, 37]]

theorem prefixGroup0105_passes :
    prefixGroup0105.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
