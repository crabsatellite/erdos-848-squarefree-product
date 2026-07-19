import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0057 : List (List ℕ) :=
  [[3, 13, 17, 73],
     [3, 13, 17, 79],
     [3, 13, 17, 83],
     [3, 13, 17, 89],
     [3, 13, 17, 97],
     [3, 13, 17, 101],
     [3, 13, 17, 103],
     [3, 13, 17, 107]]

theorem prefixGroup0057_passes :
    prefixGroup0057.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
