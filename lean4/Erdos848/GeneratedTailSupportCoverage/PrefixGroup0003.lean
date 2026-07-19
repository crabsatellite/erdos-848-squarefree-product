import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0003 : List (List ℕ) :=
  [[3, 7, 11, 113],
     [3, 7, 11, 127],
     [3, 7, 11, 131],
     [3, 7, 11, 137],
     [3, 7, 11, 139],
     [3, 7, 11, 149],
     [3, 7, 11, 151],
     [3, 7, 11, 157]]

theorem prefixGroup0003_passes :
    prefixGroup0003.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
