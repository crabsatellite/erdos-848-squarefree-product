import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0141 : List (List ℕ) :=
  [[107, 257],
     [107, 263],
     [107, 269],
     [107, 271],
     [107, 277],
     [107, 281],
     [107, 283],
     [107, 293],
     [109, 113],
     [109, 127],
     [109, 131],
     [109, 137],
     [109, 139],
     [109, 149],
     [109, 151],
     [109, 157]]

theorem k3PrefixGroup0141_passes :
    k3PrefixGroup0141.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
