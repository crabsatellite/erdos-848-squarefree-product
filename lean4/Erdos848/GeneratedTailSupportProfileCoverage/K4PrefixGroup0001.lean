import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0001 : List (List ℕ) :=
  [[3, 7, 73],
     [3, 7, 79],
     [3, 7, 83],
     [3, 7, 89],
     [3, 7, 97],
     [3, 7, 101],
     [3, 7, 103],
     [3, 7, 107],
     [3, 7, 109],
     [3, 7, 113],
     [3, 7, 127],
     [3, 7, 131],
     [3, 7, 137],
     [3, 7, 139],
     [3, 7, 149],
     [3, 7, 151]]

theorem k4PrefixGroup0001_passes :
    k4PrefixGroup0001.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
