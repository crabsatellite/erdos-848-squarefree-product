import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def prefixGroup0067 : List (List ℕ) :=
  [[3, 13, 37, 61],
     [3, 13, 37, 67],
     [3, 13, 37, 71],
     [3, 13, 37, 73],
     [3, 13, 37, 79],
     [3, 13, 41, 43],
     [3, 13, 41, 47],
     [3, 13, 41, 53]]

theorem prefixGroup0067_passes :
    prefixGroup0067.all
      Erdos848.fiveMillionOddRootPrefixMaskPasses = true := by
  decide

end Erdos848.GeneratedTailSupportCoverage
