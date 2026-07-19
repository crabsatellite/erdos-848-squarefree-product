import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0147 : List (List ℕ) :=
  [[127, 263],
     [127, 269],
     [127, 271],
     [127, 277],
     [131, 137],
     [131, 139],
     [131, 149],
     [131, 151],
     [131, 157],
     [131, 163],
     [131, 167],
     [131, 173],
     [131, 179],
     [131, 181],
     [131, 191],
     [131, 193]]

theorem k3PrefixGroup0147_passes :
    k3PrefixGroup0147.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
