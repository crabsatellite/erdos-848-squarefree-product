import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0071 : List (List ℕ) :=
  [[3, 127, 131],
     [3, 127, 137],
     [3, 127, 139],
     [3, 127, 149],
     [3, 127, 151],
     [3, 127, 157],
     [3, 131, 137],
     [3, 131, 139],
     [3, 131, 149],
     [3, 131, 151],
     [3, 137, 139],
     [3, 137, 149],
     [3, 137, 151],
     [3, 139, 149],
     [3, 139, 151],
     [7, 11, 13]]

theorem k4PrefixGroup0071_passes :
    k4PrefixGroup0071.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
