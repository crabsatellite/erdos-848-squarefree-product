import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0000 : List (List ℕ) :=
  [[3, 7, 11, 13],
     [3, 7, 11, 17],
     [3, 7, 11, 19],
     [3, 7, 11, 23],
     [3, 7, 11, 29],
     [3, 7, 11, 31],
     [3, 7, 11, 37],
     [3, 7, 11, 41]]

theorem prefixGroup0000_passes :
    prefixGroup0000.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
