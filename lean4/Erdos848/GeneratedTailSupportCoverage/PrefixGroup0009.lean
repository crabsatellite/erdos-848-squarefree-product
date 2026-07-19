import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0009 : List (List ℕ) :=
  [[3, 7, 13, 163],
     [3, 7, 13, 167],
     [3, 7, 13, 173],
     [3, 7, 13, 179],
     [3, 7, 13, 181],
     [3, 7, 17, 19],
     [3, 7, 17, 23],
     [3, 7, 17, 29]]

theorem prefixGroup0009_passes :
    prefixGroup0009.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
