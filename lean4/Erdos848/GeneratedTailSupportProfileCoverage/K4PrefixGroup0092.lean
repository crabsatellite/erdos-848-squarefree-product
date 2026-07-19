import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0092 : List (List ℕ) :=
  [[7, 31, 79],
     [7, 31, 83],
     [7, 31, 89],
     [7, 31, 97],
     [7, 31, 101],
     [7, 31, 103],
     [7, 31, 107],
     [7, 31, 109],
     [7, 31, 113],
     [7, 31, 127],
     [7, 31, 131],
     [7, 31, 137],
     [7, 31, 139],
     [7, 31, 149],
     [7, 31, 151],
     [7, 31, 157]]

theorem k4PrefixGroup0092_passes :
    k4PrefixGroup0092.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
