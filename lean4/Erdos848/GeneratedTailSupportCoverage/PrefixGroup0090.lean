import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0090 : List (List ℕ) :=
  [[3, 29, 31, 53],
     [3, 29, 31, 59],
     [3, 29, 37, 41],
     [3, 29, 37, 43],
     [3, 29, 37, 47],
     [3, 29, 41, 43],
     [3, 29, 41, 47],
     [3, 29, 43, 47]]

theorem prefixGroup0090_passes :
    prefixGroup0090.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
