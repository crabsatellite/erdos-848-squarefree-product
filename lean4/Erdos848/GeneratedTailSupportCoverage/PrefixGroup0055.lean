import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0055 : List (List ℕ) :=
  [[3, 11, 59, 61],
     [3, 11, 59, 67],
     [3, 11, 61, 67],
     [3, 13, 17, 19],
     [3, 13, 17, 23],
     [3, 13, 17, 29],
     [3, 13, 17, 31],
     [3, 13, 17, 37]]

theorem prefixGroup0055_passes :
    prefixGroup0055.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
