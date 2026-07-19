import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0013 : List (List ℕ) :=
  [[3, 7, 17, 149],
     [3, 7, 17, 151],
     [3, 7, 17, 157],
     [3, 7, 17, 163],
     [3, 7, 19, 23],
     [3, 7, 19, 29],
     [3, 7, 19, 31],
     [3, 7, 19, 37]]

theorem prefixGroup0013_passes :
    prefixGroup0013.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
