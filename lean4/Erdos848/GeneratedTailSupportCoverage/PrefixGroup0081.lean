import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0081 : List (List ℕ) :=
  [[3, 19, 23, 61],
     [3, 19, 23, 67],
     [3, 19, 23, 71],
     [3, 19, 23, 73],
     [3, 19, 23, 79],
     [3, 19, 23, 83],
     [3, 19, 29, 31],
     [3, 19, 29, 37]]

theorem prefixGroup0081_passes :
    prefixGroup0081.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
