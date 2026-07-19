import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0065 : List (List ℕ) :=
  [[23, 139],
     [23, 149],
     [23, 151],
     [23, 157],
     [23, 163],
     [23, 167],
     [23, 173],
     [23, 179],
     [23, 181],
     [23, 191],
     [23, 193],
     [23, 197],
     [23, 199],
     [23, 211],
     [23, 223],
     [23, 227]]

theorem k3PrefixGroup0065_passes :
    k3PrefixGroup0065.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
