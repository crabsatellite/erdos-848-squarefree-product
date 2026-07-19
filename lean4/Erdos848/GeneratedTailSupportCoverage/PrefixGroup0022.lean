import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0022 : List (List ℕ) :=
  [[3, 7, 29, 103],
     [3, 7, 29, 107],
     [3, 7, 29, 109],
     [3, 7, 29, 113],
     [3, 7, 31, 37],
     [3, 7, 31, 41],
     [3, 7, 31, 43],
     [3, 7, 31, 47]]

theorem prefixGroup0022_passes :
    prefixGroup0022.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
