import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0096 : List (List ℕ) :=
  [[7, 41, 73],
     [7, 41, 79],
     [7, 41, 83],
     [7, 41, 89],
     [7, 41, 97],
     [7, 41, 101],
     [7, 41, 103],
     [7, 41, 107],
     [7, 41, 109],
     [7, 41, 113],
     [7, 41, 127],
     [7, 41, 131],
     [7, 41, 137],
     [7, 41, 139],
     [7, 41, 149],
     [7, 41, 151]]

theorem k4PrefixGroup0096_passes :
    k4PrefixGroup0096.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
