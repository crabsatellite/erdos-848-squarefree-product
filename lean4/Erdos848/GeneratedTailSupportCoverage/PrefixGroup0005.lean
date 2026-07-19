import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0005 : List (List ℕ) :=
  [[3, 7, 11, 199],
     [3, 7, 13, 17],
     [3, 7, 13, 19],
     [3, 7, 13, 23],
     [3, 7, 13, 29],
     [3, 7, 13, 31],
     [3, 7, 13, 37],
     [3, 7, 13, 41]]

theorem prefixGroup0005_passes :
    prefixGroup0005.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
