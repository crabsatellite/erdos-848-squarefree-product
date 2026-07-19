import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0037 : List (List ℕ) :=
  [[3, 11, 13, 101],
     [3, 11, 13, 103],
     [3, 11, 13, 107],
     [3, 11, 13, 109],
     [3, 11, 13, 113],
     [3, 11, 13, 127],
     [3, 11, 13, 131],
     [3, 11, 13, 137]]

theorem prefixGroup0037_passes :
    prefixGroup0037.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
