import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0019 : List (List ℕ) :=
  [[7, 131],
     [7, 137],
     [7, 139],
     [7, 149],
     [7, 151],
     [7, 157],
     [7, 163],
     [7, 167],
     [7, 173],
     [7, 179],
     [7, 181],
     [7, 191],
     [7, 193],
     [7, 197],
     [7, 199],
     [7, 211]]

theorem k3PrefixGroup0019_passes :
    k3PrefixGroup0019.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
