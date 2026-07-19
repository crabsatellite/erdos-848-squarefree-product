import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0083 : List (List ℕ) :=
  [[37, 103],
     [37, 107],
     [37, 109],
     [37, 113],
     [37, 127],
     [37, 131],
     [37, 137],
     [37, 139],
     [37, 149],
     [37, 151],
     [37, 157],
     [37, 163],
     [37, 167],
     [37, 173],
     [37, 179],
     [37, 181]]

theorem k3PrefixGroup0083_passes :
    k3PrefixGroup0083.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
