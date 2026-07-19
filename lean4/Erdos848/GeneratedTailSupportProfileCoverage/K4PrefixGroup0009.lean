import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0009 : List (List ℕ) :=
  [[3, 11, 113],
     [3, 11, 127],
     [3, 11, 131],
     [3, 11, 137],
     [3, 11, 139],
     [3, 11, 149],
     [3, 11, 151],
     [3, 11, 157],
     [3, 11, 163],
     [3, 11, 167],
     [3, 11, 173],
     [3, 11, 179],
     [3, 11, 181],
     [3, 11, 191],
     [3, 11, 193],
     [3, 11, 197]]

theorem k4PrefixGroup0009_passes :
    k4PrefixGroup0009.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
