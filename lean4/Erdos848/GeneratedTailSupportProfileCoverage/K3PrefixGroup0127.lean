import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0127 : List (List ℕ) :=
  [[83, 107],
     [83, 109],
     [83, 113],
     [83, 127],
     [83, 131],
     [83, 137],
     [83, 139],
     [83, 149],
     [83, 151],
     [83, 157],
     [83, 163],
     [83, 167],
     [83, 173],
     [83, 179],
     [83, 181],
     [83, 191]]

theorem k3PrefixGroup0127_passes :
    k3PrefixGroup0127.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
