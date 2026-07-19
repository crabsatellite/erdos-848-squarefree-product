import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0087 : List (List ℕ) :=
  [[3, 23, 29, 59],
     [3, 23, 29, 61],
     [3, 23, 29, 67],
     [3, 23, 31, 37],
     [3, 23, 31, 41],
     [3, 23, 31, 43],
     [3, 23, 31, 47],
     [3, 23, 31, 53]]

theorem prefixGroup0087_passes :
    prefixGroup0087.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
