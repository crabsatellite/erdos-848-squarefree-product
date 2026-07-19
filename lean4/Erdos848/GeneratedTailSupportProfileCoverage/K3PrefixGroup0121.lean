import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0121 : List (List ℕ) :=
  [[73, 113],
     [73, 127],
     [73, 131],
     [73, 137],
     [73, 139],
     [73, 149],
     [73, 151],
     [73, 157],
     [73, 163],
     [73, 167],
     [73, 173],
     [73, 179],
     [73, 181],
     [73, 191],
     [73, 193],
     [73, 197]]

theorem k3PrefixGroup0121_passes :
    k3PrefixGroup0121.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
