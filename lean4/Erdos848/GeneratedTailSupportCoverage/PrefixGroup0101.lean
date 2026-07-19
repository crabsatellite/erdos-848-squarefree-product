import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0101 : List (List ℕ) :=
  [[7, 11, 31, 59],
     [7, 11, 31, 61],
     [7, 11, 37, 41],
     [7, 11, 37, 43],
     [7, 11, 37, 47],
     [7, 11, 37, 53],
     [7, 11, 41, 43],
     [7, 11, 41, 47]]

theorem prefixGroup0101_passes :
    prefixGroup0101.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
