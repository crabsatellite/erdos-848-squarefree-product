import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0122 : List (List ℕ) :=
  [[11, 17, 31, 37],
     [11, 19, 23, 29],
     [11, 19, 23, 31],
     [11, 19, 23, 37],
     [11, 19, 23, 41],
     [11, 19, 23, 43],
     [11, 19, 29, 31],
     [11, 19, 29, 37]]

theorem prefixGroup0122_passes :
    prefixGroup0122.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
