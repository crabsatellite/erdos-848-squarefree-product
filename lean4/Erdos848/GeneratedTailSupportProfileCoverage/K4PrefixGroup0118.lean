import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0118 : List (List ℕ) :=
  [[11, 23, 101],
     [11, 23, 103],
     [11, 23, 107],
     [11, 23, 109],
     [11, 23, 113],
     [11, 23, 127],
     [11, 23, 131],
     [11, 23, 137],
     [11, 23, 139],
     [11, 23, 149],
     [11, 23, 151],
     [11, 23, 157],
     [11, 23, 163],
     [11, 23, 167],
     [11, 23, 173],
     [11, 23, 179]]

theorem k4PrefixGroup0118_passes :
    k4PrefixGroup0118.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
