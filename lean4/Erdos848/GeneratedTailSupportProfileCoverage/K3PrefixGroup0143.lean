import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0143 : List (List ℕ) :=
  [[109, 251],
     [109, 257],
     [109, 263],
     [109, 269],
     [109, 271],
     [109, 277],
     [109, 281],
     [109, 283],
     [109, 293],
     [113, 127],
     [113, 131],
     [113, 137],
     [113, 139],
     [113, 149],
     [113, 151],
     [113, 157]]

theorem k3PrefixGroup0143_passes :
    k3PrefixGroup0143.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
