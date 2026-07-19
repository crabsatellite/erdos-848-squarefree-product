import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0070 : List (List ℕ) :=
  [[3, 109, 137],
     [3, 109, 139],
     [3, 109, 149],
     [3, 109, 151],
     [3, 109, 157],
     [3, 109, 163],
     [3, 109, 167],
     [3, 113, 127],
     [3, 113, 131],
     [3, 113, 137],
     [3, 113, 139],
     [3, 113, 149],
     [3, 113, 151],
     [3, 113, 157],
     [3, 113, 163],
     [3, 113, 167]]

theorem k4PrefixGroup0070_passes :
    k4PrefixGroup0070.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
