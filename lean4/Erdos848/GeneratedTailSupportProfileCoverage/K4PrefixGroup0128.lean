import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0128 : List (List ℕ) :=
  [[11, 47, 137],
     [11, 53, 59],
     [11, 53, 61],
     [11, 53, 67],
     [11, 53, 71],
     [11, 53, 73],
     [11, 53, 79],
     [11, 53, 83],
     [11, 53, 89],
     [11, 53, 97],
     [11, 53, 101],
     [11, 53, 103],
     [11, 53, 107],
     [11, 53, 109],
     [11, 53, 113],
     [11, 53, 127]]

theorem k4PrefixGroup0128_passes :
    k4PrefixGroup0128.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
