import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0068 : List (List ℕ) :=
  [[3, 101, 163],
     [3, 101, 167],
     [3, 101, 173],
     [3, 101, 179],
     [3, 103, 107],
     [3, 103, 109],
     [3, 103, 113],
     [3, 103, 127],
     [3, 103, 131],
     [3, 103, 137],
     [3, 103, 139],
     [3, 103, 149],
     [3, 103, 151],
     [3, 103, 157],
     [3, 103, 163],
     [3, 103, 167]]

theorem k4PrefixGroup0068_passes :
    k4PrefixGroup0068.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
