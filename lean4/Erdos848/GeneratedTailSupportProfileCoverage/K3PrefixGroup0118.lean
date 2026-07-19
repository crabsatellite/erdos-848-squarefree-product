import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0118 : List (List ℕ) :=
  [[71, 139],
     [71, 149],
     [71, 151],
     [71, 157],
     [71, 163],
     [71, 167],
     [71, 173],
     [71, 179],
     [71, 181],
     [71, 191],
     [71, 193],
     [71, 197],
     [71, 199],
     [71, 211],
     [71, 223],
     [71, 227]]

theorem k3PrefixGroup0118_passes :
    k3PrefixGroup0118.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
