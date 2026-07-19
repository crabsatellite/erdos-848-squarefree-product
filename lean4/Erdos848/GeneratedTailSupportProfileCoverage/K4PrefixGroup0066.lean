import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0066 : List (List ℕ) :=
  [[3, 89, 167],
     [3, 89, 173],
     [3, 89, 179],
     [3, 89, 181],
     [3, 89, 191],
     [3, 97, 101],
     [3, 97, 103],
     [3, 97, 107],
     [3, 97, 109],
     [3, 97, 113],
     [3, 97, 127],
     [3, 97, 131],
     [3, 97, 137],
     [3, 97, 139],
     [3, 97, 149],
     [3, 97, 151]]

theorem k4PrefixGroup0066_passes :
    k4PrefixGroup0066.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
