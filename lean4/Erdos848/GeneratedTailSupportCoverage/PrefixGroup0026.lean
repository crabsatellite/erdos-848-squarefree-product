import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0026 : List (List ℕ) :=
  [[3, 7, 37, 79],
     [3, 7, 37, 83],
     [3, 7, 37, 89],
     [3, 7, 37, 97],
     [3, 7, 37, 101],
     [3, 7, 37, 103],
     [3, 7, 37, 107],
     [3, 7, 37, 109]]

theorem prefixGroup0026_passes :
    prefixGroup0026.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
