import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0019 : List (List ℕ) :=
  [[3, 7, 23, 101],
     [3, 7, 23, 103],
     [3, 7, 23, 107],
     [3, 7, 23, 109],
     [3, 7, 23, 113],
     [3, 7, 23, 127],
     [3, 7, 23, 131],
     [3, 7, 23, 137]]

theorem prefixGroup0019_passes :
    prefixGroup0019.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
