import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0073 : List (List ℕ) :=
  [[7, 11, 83],
     [7, 11, 89],
     [7, 11, 97],
     [7, 11, 101],
     [7, 11, 103],
     [7, 11, 107],
     [7, 11, 109],
     [7, 11, 113],
     [7, 11, 127],
     [7, 11, 131],
     [7, 11, 137],
     [7, 11, 139],
     [7, 11, 149],
     [7, 11, 151],
     [7, 11, 157],
     [7, 11, 163]]

theorem k4PrefixGroup0073_passes :
    k4PrefixGroup0073.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
