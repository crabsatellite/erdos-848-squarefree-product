import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0110 : List (List ℕ) :=
  [[61, 73],
     [61, 79],
     [61, 83],
     [61, 89],
     [61, 97],
     [61, 101],
     [61, 103],
     [61, 107],
     [61, 109],
     [61, 113],
     [61, 127],
     [61, 131],
     [61, 137],
     [61, 139],
     [61, 149],
     [61, 151]]

theorem k3PrefixGroup0110_passes :
    k3PrefixGroup0110.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
