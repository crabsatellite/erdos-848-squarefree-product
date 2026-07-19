import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0037 : List (List ℕ) :=
  [[3, 31, 103],
     [3, 31, 107],
     [3, 31, 109],
     [3, 31, 113],
     [3, 31, 127],
     [3, 31, 131],
     [3, 31, 137],
     [3, 31, 139],
     [3, 31, 149],
     [3, 31, 151],
     [3, 31, 157],
     [3, 31, 163],
     [3, 31, 167],
     [3, 31, 173],
     [3, 31, 179],
     [3, 31, 181]]

theorem k4PrefixGroup0037_passes :
    k4PrefixGroup0037.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
