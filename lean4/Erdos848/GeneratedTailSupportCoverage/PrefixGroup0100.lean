import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0100 : List (List ℕ) :=
  [[7, 11, 29, 53],
     [7, 11, 29, 59],
     [7, 11, 29, 61],
     [7, 11, 31, 37],
     [7, 11, 31, 41],
     [7, 11, 31, 43],
     [7, 11, 31, 47],
     [7, 11, 31, 53]]

theorem prefixGroup0100_passes :
    prefixGroup0100.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
