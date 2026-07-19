import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0125 : List (List ℕ) :=
  [[11, 41, 89],
     [11, 41, 97],
     [11, 41, 101],
     [11, 41, 103],
     [11, 41, 107],
     [11, 41, 109],
     [11, 41, 113],
     [11, 41, 127],
     [11, 41, 131],
     [11, 41, 137],
     [11, 41, 139],
     [11, 43, 47],
     [11, 43, 53],
     [11, 43, 59],
     [11, 43, 61],
     [11, 43, 67]]

theorem k4PrefixGroup0125_passes :
    k4PrefixGroup0125.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
