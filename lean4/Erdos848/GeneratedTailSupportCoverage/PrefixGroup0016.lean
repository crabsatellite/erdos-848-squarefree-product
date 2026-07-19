import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0016 : List (List ℕ) :=
  [[3, 7, 19, 109],
     [3, 7, 19, 113],
     [3, 7, 19, 127],
     [3, 7, 19, 131],
     [3, 7, 19, 137],
     [3, 7, 19, 139],
     [3, 7, 19, 149],
     [3, 7, 19, 151]]

theorem prefixGroup0016_passes :
    prefixGroup0016.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
