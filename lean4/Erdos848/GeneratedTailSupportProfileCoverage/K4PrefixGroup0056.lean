import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0056 : List (List ℕ) :=
  [[3, 61, 113],
     [3, 61, 127],
     [3, 61, 131],
     [3, 61, 137],
     [3, 61, 139],
     [3, 61, 149],
     [3, 61, 151],
     [3, 61, 157],
     [3, 61, 163],
     [3, 61, 167],
     [3, 61, 173],
     [3, 61, 179],
     [3, 61, 181],
     [3, 61, 191],
     [3, 61, 193],
     [3, 61, 197]]

theorem k4PrefixGroup0056_passes :
    k4PrefixGroup0056.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
