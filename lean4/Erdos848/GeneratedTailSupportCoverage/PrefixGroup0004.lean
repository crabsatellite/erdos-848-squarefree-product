import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0004 : List (List ℕ) :=
  [[3, 7, 11, 163],
     [3, 7, 11, 167],
     [3, 7, 11, 173],
     [3, 7, 11, 179],
     [3, 7, 11, 181],
     [3, 7, 11, 191],
     [3, 7, 11, 193],
     [3, 7, 11, 197]]

theorem prefixGroup0004_passes :
    prefixGroup0004.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
