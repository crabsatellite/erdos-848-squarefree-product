import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0046 : List (List ℕ) :=
  [[3, 43, 79],
     [3, 43, 83],
     [3, 43, 89],
     [3, 43, 97],
     [3, 43, 101],
     [3, 43, 103],
     [3, 43, 107],
     [3, 43, 109],
     [3, 43, 113],
     [3, 43, 127],
     [3, 43, 131],
     [3, 43, 137],
     [3, 43, 139],
     [3, 43, 149],
     [3, 43, 151],
     [3, 43, 157]]

theorem k4PrefixGroup0046_passes :
    k4PrefixGroup0046.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
