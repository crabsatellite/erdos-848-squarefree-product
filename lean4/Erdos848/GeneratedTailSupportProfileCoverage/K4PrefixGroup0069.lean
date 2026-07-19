import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0069 : List (List ℕ) :=
  [[3, 103, 173],
     [3, 107, 109],
     [3, 107, 113],
     [3, 107, 127],
     [3, 107, 131],
     [3, 107, 137],
     [3, 107, 139],
     [3, 107, 149],
     [3, 107, 151],
     [3, 107, 157],
     [3, 107, 163],
     [3, 107, 167],
     [3, 107, 173],
     [3, 109, 113],
     [3, 109, 127],
     [3, 109, 131]]

theorem k4PrefixGroup0069_passes :
    k4PrefixGroup0069.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
