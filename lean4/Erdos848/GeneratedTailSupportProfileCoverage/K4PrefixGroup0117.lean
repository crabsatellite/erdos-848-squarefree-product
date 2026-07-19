import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0117 : List (List ℕ) :=
  [[11, 23, 29],
     [11, 23, 31],
     [11, 23, 37],
     [11, 23, 41],
     [11, 23, 43],
     [11, 23, 47],
     [11, 23, 53],
     [11, 23, 59],
     [11, 23, 61],
     [11, 23, 67],
     [11, 23, 71],
     [11, 23, 73],
     [11, 23, 79],
     [11, 23, 83],
     [11, 23, 89],
     [11, 23, 97]]

theorem k4PrefixGroup0117_passes :
    k4PrefixGroup0117.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
