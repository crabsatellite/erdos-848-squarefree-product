import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0087 : List (List ℕ) :=
  [[7, 23, 73],
     [7, 23, 79],
     [7, 23, 83],
     [7, 23, 89],
     [7, 23, 97],
     [7, 23, 101],
     [7, 23, 103],
     [7, 23, 107],
     [7, 23, 109],
     [7, 23, 113],
     [7, 23, 127],
     [7, 23, 131],
     [7, 23, 137],
     [7, 23, 139],
     [7, 23, 149],
     [7, 23, 151]]

theorem k4PrefixGroup0087_passes :
    k4PrefixGroup0087.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
