import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0049 : List (List ℕ) :=
  [[3, 11, 31, 53],
     [3, 11, 31, 59],
     [3, 11, 31, 61],
     [3, 11, 31, 67],
     [3, 11, 31, 71],
     [3, 11, 31, 73],
     [3, 11, 31, 79],
     [3, 11, 31, 83]]

theorem prefixGroup0049_passes :
    prefixGroup0049.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
