import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0012 : List (List ℕ) :=
  [[3, 7, 17, 103],
     [3, 7, 17, 107],
     [3, 7, 17, 109],
     [3, 7, 17, 113],
     [3, 7, 17, 127],
     [3, 7, 17, 131],
     [3, 7, 17, 137],
     [3, 7, 17, 139]]

theorem prefixGroup0012_passes :
    prefixGroup0012.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
