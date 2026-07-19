import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0137 : List (List ℕ) :=
  [[101, 307],
     [101, 311],
     [103, 107],
     [103, 109],
     [103, 113],
     [103, 127],
     [103, 131],
     [103, 137],
     [103, 139],
     [103, 149],
     [103, 151],
     [103, 157],
     [103, 163],
     [103, 167],
     [103, 173],
     [103, 179]]

theorem k3PrefixGroup0137_passes :
    k3PrefixGroup0137.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
