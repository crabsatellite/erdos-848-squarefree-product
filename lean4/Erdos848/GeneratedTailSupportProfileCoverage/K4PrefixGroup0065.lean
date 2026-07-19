import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0065 : List (List ℕ) :=
  [[3, 83, 193],
     [3, 83, 197],
     [3, 89, 97],
     [3, 89, 101],
     [3, 89, 103],
     [3, 89, 107],
     [3, 89, 109],
     [3, 89, 113],
     [3, 89, 127],
     [3, 89, 131],
     [3, 89, 137],
     [3, 89, 139],
     [3, 89, 149],
     [3, 89, 151],
     [3, 89, 157],
     [3, 89, 163]]

theorem k4PrefixGroup0065_passes :
    k4PrefixGroup0065.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
