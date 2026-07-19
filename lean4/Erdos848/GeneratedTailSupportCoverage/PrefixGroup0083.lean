import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0083 : List (List ℕ) :=
  [[3, 19, 29, 73],
     [3, 19, 31, 37],
     [3, 19, 31, 41],
     [3, 19, 31, 43],
     [3, 19, 31, 47],
     [3, 19, 31, 53],
     [3, 19, 31, 59],
     [3, 19, 31, 61]]

theorem prefixGroup0083_passes :
    prefixGroup0083.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
