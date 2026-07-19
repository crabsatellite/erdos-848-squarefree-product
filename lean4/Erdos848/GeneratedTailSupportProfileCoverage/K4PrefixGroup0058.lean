import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0058 : List (List ℕ) :=
  [[3, 67, 127],
     [3, 67, 131],
     [3, 67, 137],
     [3, 67, 139],
     [3, 67, 149],
     [3, 67, 151],
     [3, 67, 157],
     [3, 67, 163],
     [3, 67, 167],
     [3, 67, 173],
     [3, 67, 179],
     [3, 67, 181],
     [3, 67, 191],
     [3, 67, 193],
     [3, 67, 197],
     [3, 67, 199]]

theorem k4PrefixGroup0058_passes :
    k4PrefixGroup0058.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
