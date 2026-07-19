import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0145 : List (List ℕ) :=
  [[113, 251],
     [113, 257],
     [113, 263],
     [113, 269],
     [113, 271],
     [113, 277],
     [113, 281],
     [113, 283],
     [127, 131],
     [127, 137],
     [127, 139],
     [127, 149],
     [127, 151],
     [127, 157],
     [127, 163],
     [127, 167]]

theorem k3PrefixGroup0145_passes :
    k3PrefixGroup0145.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
