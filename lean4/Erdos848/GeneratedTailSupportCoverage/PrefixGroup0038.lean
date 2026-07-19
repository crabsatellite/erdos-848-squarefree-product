import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0038 : List (List ℕ) :=
  [[3, 11, 13, 139],
     [3, 11, 13, 149],
     [3, 11, 17, 19],
     [3, 11, 17, 23],
     [3, 11, 17, 29],
     [3, 11, 17, 31],
     [3, 11, 17, 37],
     [3, 11, 17, 41]]

theorem prefixGroup0038_passes :
    prefixGroup0038.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
