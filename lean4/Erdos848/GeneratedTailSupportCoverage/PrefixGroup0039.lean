import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0039 : List (List ℕ) :=
  [[3, 11, 17, 43],
     [3, 11, 17, 47],
     [3, 11, 17, 53],
     [3, 11, 17, 59],
     [3, 11, 17, 61],
     [3, 11, 17, 67],
     [3, 11, 17, 71],
     [3, 11, 17, 73]]

theorem prefixGroup0039_passes :
    prefixGroup0039.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
