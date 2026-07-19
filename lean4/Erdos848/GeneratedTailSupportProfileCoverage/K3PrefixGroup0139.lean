import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0139 : List (List ℕ) :=
  [[103, 271],
     [103, 277],
     [103, 281],
     [103, 283],
     [103, 293],
     [103, 307],
     [107, 109],
     [107, 113],
     [107, 127],
     [107, 131],
     [107, 137],
     [107, 139],
     [107, 149],
     [107, 151],
     [107, 157],
     [107, 163]]

theorem k3PrefixGroup0139_passes :
    k3PrefixGroup0139.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
