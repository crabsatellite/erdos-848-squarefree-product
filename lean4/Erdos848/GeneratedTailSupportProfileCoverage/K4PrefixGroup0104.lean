import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0104 : List (List ℕ) :=
  [[7, 61, 139],
     [7, 61, 149],
     [7, 67, 71],
     [7, 67, 73],
     [7, 67, 79],
     [7, 67, 83],
     [7, 67, 89],
     [7, 67, 97],
     [7, 67, 101],
     [7, 67, 103],
     [7, 67, 107],
     [7, 67, 109],
     [7, 67, 113],
     [7, 67, 127],
     [7, 67, 131],
     [7, 67, 137]]

theorem k4PrefixGroup0104_passes :
    k4PrefixGroup0104.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
