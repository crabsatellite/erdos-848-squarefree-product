import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0084 : List (List ℕ) :=
  [[7, 19, 79],
     [7, 19, 83],
     [7, 19, 89],
     [7, 19, 97],
     [7, 19, 101],
     [7, 19, 103],
     [7, 19, 107],
     [7, 19, 109],
     [7, 19, 113],
     [7, 19, 127],
     [7, 19, 131],
     [7, 19, 137],
     [7, 19, 139],
     [7, 19, 149],
     [7, 19, 151],
     [7, 19, 157]]

theorem k4PrefixGroup0084_passes :
    k4PrefixGroup0084.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
