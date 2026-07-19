import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0098 : List (List ℕ) :=
  [[47, 107],
     [47, 109],
     [47, 113],
     [47, 127],
     [47, 131],
     [47, 137],
     [47, 139],
     [47, 149],
     [47, 151],
     [47, 157],
     [47, 163],
     [47, 167],
     [47, 173],
     [47, 179],
     [47, 181],
     [47, 191]]

theorem k3PrefixGroup0098_passes :
    k3PrefixGroup0098.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
