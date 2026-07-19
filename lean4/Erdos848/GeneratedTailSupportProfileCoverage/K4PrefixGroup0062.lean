import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0062 : List (List ℕ) :=
  [[3, 73, 191],
     [3, 73, 193],
     [3, 73, 197],
     [3, 73, 199],
     [3, 79, 83],
     [3, 79, 89],
     [3, 79, 97],
     [3, 79, 101],
     [3, 79, 103],
     [3, 79, 107],
     [3, 79, 109],
     [3, 79, 113],
     [3, 79, 127],
     [3, 79, 131],
     [3, 79, 137],
     [3, 79, 139]]

theorem k4PrefixGroup0062_passes :
    k4PrefixGroup0062.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
