import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0102 : List (List ℕ) :=
  [[53, 71],
     [53, 73],
     [53, 79],
     [53, 83],
     [53, 89],
     [53, 97],
     [53, 101],
     [53, 103],
     [53, 107],
     [53, 109],
     [53, 113],
     [53, 127],
     [53, 131],
     [53, 137],
     [53, 139],
     [53, 149]]

theorem k3PrefixGroup0102_passes :
    k3PrefixGroup0102.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
