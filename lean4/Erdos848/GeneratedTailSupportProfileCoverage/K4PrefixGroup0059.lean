import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0059 : List (List ℕ) :=
  [[3, 67, 211],
     [3, 71, 73],
     [3, 71, 79],
     [3, 71, 83],
     [3, 71, 89],
     [3, 71, 97],
     [3, 71, 101],
     [3, 71, 103],
     [3, 71, 107],
     [3, 71, 109],
     [3, 71, 113],
     [3, 71, 127],
     [3, 71, 131],
     [3, 71, 137],
     [3, 71, 139],
     [3, 71, 149]]

theorem k4PrefixGroup0059_passes :
    k4PrefixGroup0059.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
