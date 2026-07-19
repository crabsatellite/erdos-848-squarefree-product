import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0008 : List (List ℕ) :=
  [[3, 7, 13, 113],
     [3, 7, 13, 127],
     [3, 7, 13, 131],
     [3, 7, 13, 137],
     [3, 7, 13, 139],
     [3, 7, 13, 149],
     [3, 7, 13, 151],
     [3, 7, 13, 157]]

theorem prefixGroup0008_passes :
    prefixGroup0008.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
