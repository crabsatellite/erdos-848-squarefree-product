import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0001 : List (List ℕ) :=
  [[3, 71],
     [3, 73],
     [3, 79],
     [3, 83],
     [3, 89],
     [3, 97],
     [3, 101],
     [3, 103],
     [3, 107],
     [3, 109],
     [3, 113],
     [3, 127],
     [3, 131],
     [3, 137],
     [3, 139],
     [3, 149]]

theorem k3PrefixGroup0001_passes :
    k3PrefixGroup0001.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
