import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0054 : List (List ℕ) :=
  [[3, 59, 127],
     [3, 59, 131],
     [3, 59, 137],
     [3, 59, 139],
     [3, 59, 149],
     [3, 59, 151],
     [3, 59, 157],
     [3, 59, 163],
     [3, 59, 167],
     [3, 59, 173],
     [3, 59, 179],
     [3, 59, 181],
     [3, 59, 191],
     [3, 59, 193],
     [3, 59, 197],
     [3, 59, 199]]

theorem k4PrefixGroup0054_passes :
    k4PrefixGroup0054.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
