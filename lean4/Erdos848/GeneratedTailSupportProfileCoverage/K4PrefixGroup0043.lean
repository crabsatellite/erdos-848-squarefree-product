import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0043 : List (List ℕ) :=
  [[3, 41, 71],
     [3, 41, 73],
     [3, 41, 79],
     [3, 41, 83],
     [3, 41, 89],
     [3, 41, 97],
     [3, 41, 101],
     [3, 41, 103],
     [3, 41, 107],
     [3, 41, 109],
     [3, 41, 113],
     [3, 41, 127],
     [3, 41, 131],
     [3, 41, 137],
     [3, 41, 139],
     [3, 41, 149]]

theorem k4PrefixGroup0043_passes :
    k4PrefixGroup0043.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
