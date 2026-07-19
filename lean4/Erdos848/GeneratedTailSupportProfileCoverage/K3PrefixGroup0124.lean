import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0124 : List (List ℕ) :=
  [[79, 103],
     [79, 107],
     [79, 109],
     [79, 113],
     [79, 127],
     [79, 131],
     [79, 137],
     [79, 139],
     [79, 149],
     [79, 151],
     [79, 157],
     [79, 163],
     [79, 167],
     [79, 173],
     [79, 179],
     [79, 181]]

theorem k3PrefixGroup0124_passes :
    k3PrefixGroup0124.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
