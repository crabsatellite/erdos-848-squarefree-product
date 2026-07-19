import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0092 : List (List ℕ) :=
  [[7, 11, 13, 19],
     [7, 11, 13, 23],
     [7, 11, 13, 29],
     [7, 11, 13, 31],
     [7, 11, 13, 37],
     [7, 11, 13, 41],
     [7, 11, 13, 43],
     [7, 11, 13, 47]]

theorem prefixGroup0092_passes :
    prefixGroup0092.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
