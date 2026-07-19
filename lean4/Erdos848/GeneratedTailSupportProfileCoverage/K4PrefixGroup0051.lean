import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0051 : List (List ℕ) :=
  [[3, 53, 67],
     [3, 53, 71],
     [3, 53, 73],
     [3, 53, 79],
     [3, 53, 83],
     [3, 53, 89],
     [3, 53, 97],
     [3, 53, 101],
     [3, 53, 103],
     [3, 53, 107],
     [3, 53, 109],
     [3, 53, 113],
     [3, 53, 127],
     [3, 53, 131],
     [3, 53, 137],
     [3, 53, 139]]

theorem k4PrefixGroup0051_passes :
    k4PrefixGroup0051.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
