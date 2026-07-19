import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0025 : List (List ℕ) :=
  [[3, 19, 101],
     [3, 19, 103],
     [3, 19, 107],
     [3, 19, 109],
     [3, 19, 113],
     [3, 19, 127],
     [3, 19, 131],
     [3, 19, 137],
     [3, 19, 139],
     [3, 19, 149],
     [3, 19, 151],
     [3, 19, 157],
     [3, 19, 163],
     [3, 19, 167],
     [3, 19, 173],
     [3, 19, 179]]

theorem k4PrefixGroup0025_passes :
    k4PrefixGroup0025.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
