import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0090 : List (List ℕ) :=
  [[7, 29, 101],
     [7, 29, 103],
     [7, 29, 107],
     [7, 29, 109],
     [7, 29, 113],
     [7, 29, 127],
     [7, 29, 131],
     [7, 29, 137],
     [7, 29, 139],
     [7, 29, 149],
     [7, 29, 151],
     [7, 29, 157],
     [7, 29, 163],
     [7, 29, 167],
     [7, 29, 173],
     [7, 29, 179]]

theorem k4PrefixGroup0090_passes :
    k4PrefixGroup0090.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
