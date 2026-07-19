import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0065 : List (List ℕ) :=
  [[3, 13, 31, 41],
     [3, 13, 31, 43],
     [3, 13, 31, 47],
     [3, 13, 31, 53],
     [3, 13, 31, 59],
     [3, 13, 31, 61],
     [3, 13, 31, 67],
     [3, 13, 31, 71]]

theorem prefixGroup0065_passes :
    prefixGroup0065.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
