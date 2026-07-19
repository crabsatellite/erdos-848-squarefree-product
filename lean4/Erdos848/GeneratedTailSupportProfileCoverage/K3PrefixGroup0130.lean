import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0130 : List (List ℕ) :=
  [[89, 131],
     [89, 137],
     [89, 139],
     [89, 149],
     [89, 151],
     [89, 157],
     [89, 163],
     [89, 167],
     [89, 173],
     [89, 179],
     [89, 181],
     [89, 191],
     [89, 193],
     [89, 197],
     [89, 199],
     [89, 211]]

theorem k3PrefixGroup0130_passes :
    k3PrefixGroup0130.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
